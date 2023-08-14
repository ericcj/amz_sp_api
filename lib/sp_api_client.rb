require 'aws-sigv4'

require 'api_error'
require 'api_client'

module AmzSpApi
  class SpApiClient < ApiClient

    def initialize(config = SpConfiguration.default)
      super(config)
    end

    alias_method :super_call_api, :call_api
    def call_api(http_method, path, opts = {})
      unsigned_request = build_request(http_method, path, opts)
      aws_headers = auth_headers(http_method, path, unsigned_request.url, unsigned_request.encoded_body)
      signed_opts = opts.merge(:header_params => aws_headers.merge(opts[:header_params] || {}))
      super(http_method, path, signed_opts)
    end

    private

    def retrieve_token(grantless, get_token_method, save_token_method, token_key)
      return request_lwa_access_token(grantless)[:access_token] unless config.public_send(get_token_method)

      stored_token = config.public_send(get_token_method).call(config.public_send(token_key))
      stored_token || store_and_return_new_token(grantless, save_token_method, token_key)
    end

    def store_and_return_new_token(grantless, save_token_method, token_key)
      new_token = request_lwa_access_token(grantless)
      config.public_send(save_token_method).call(config.public_send(token_key), new_token) if config.public_send(save_token_method)
      new_token[:access_token]
    end

    def retrieve_lwa_grantless_access_token
      retrieve_token(
        true,
        :get_grantless_access_token,
        :save_grantless_access_token,
        :grantless_access_token_key)
    end

    def retrieve_lwa_access_token
      retrieve_token(
        false,
        :get_access_token,
        :save_access_token,
        :access_token_key)
    end

    def request_lwa_access_token(grantless)
      newself = self.dup
      newself.config = config.dup
      newself.config.host = 'api.amazon.com'

      form_params = {
        client_id: config.client_id,
        client_secret: config.client_secret,
        grant_type: grantless ? 'client_credentials' : 'refresh_token'
      }

      if grantless
        form_params[:scope] = 'sellingpartnerapi::notifications'
      else
        form_params[:refresh_token] = config.refresh_token
      end

      data, status_code, headers = newself.super_call_api(:POST, '/auth/o2/token',
        :header_params => {
         'Content-Type' => 'application/x-www-form-urlencoded'
        },
        :form_params =>  form_params,
        :return_type => 'Object')

      unless data && data[:access_token]
        fail ApiError.new(:code => status_code,
                          :response_headers => headers,
                          :response_body => data)
      end

      data
    end

    def signed_request_headers(http_method, url, body)
      request_config = {
        service: 'execute-api',
        region: config.aws_region
      }
      if config.credentials_provider
        request_config[:credentials_provider] = config.credentials_provider
      else
        request_config[:access_key_id] = config.aws_access_key_id
        request_config[:secret_access_key] = config.aws_secret_access_key
      end
      signer = Aws::Sigv4::Signer.new(request_config)
      signer.sign_request(http_method: http_method.to_s, url: url, body: body).headers
    end

    def auth_headers(http_method, path, url, body)
      access_token = if grantless_request?(http_method, path)
                       retrieve_lwa_grantless_access_token
                     else
                       retrieve_lwa_access_token
                     end

      signed_request_headers(http_method, url, body).merge({ 'x-amz-access-token' => access_token })
    end

    def grantless_request?(http_method, path)
      case http_method
      when :POST
        path == '/notifications/v1/destinations'
      when :GET
        %w[/notifications/v1/destinations /authorization/v1/authorizationCode].include?(path) ||
          !!path.match(%r{^/notifications/v1/subscriptions/[^/]+/[^/]+$}) ||
          !!path.match(%r{^/notifications/v1/destinations/[^/]+$})
      when :DELETE
        !!path.match(%r{^/notifications/v1/destinations/[^/]+$}) ||
          !!path.match(%r{^/notifications/v2/subscriptions/[^/]+/[^/]+$})
      else
        false
      end
    end
  end
end
