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
      aws_headers = auth_headers(http_method, unsigned_request.url, unsigned_request.encoded_body)
      signed_opts = opts.merge(:header_params => aws_headers.merge(opts[:header_params] || {}))
      super(http_method, path, signed_opts)
    end

    private

    def retrieve_lwa_access_token
      return request_lwa_access_token[:access_token] unless config.get_access_token
      stored_token = config.get_access_token.call(config.access_token_key)
      if stored_token.nil?
        new_token = request_lwa_access_token
        config.save_access_token.call(config.access_token_key, new_token) if config.save_access_token
        return new_token[:access_token]
      else
        return stored_token
      end
    end

    def request_lwa_access_token
      newself = self.dup
      newself.config = config.dup
      newself.config.host = 'api.amazon.com'

      data, status_code, headers = newself.super_call_api(:POST, '/auth/o2/token',
        :header_params => {
         'Content-Type' => 'application/x-www-form-urlencoded'
        },
        :form_params =>  {
          grant_type: 'refresh_token',
          refresh_token: config.refresh_token,
          client_id: config.client_id,
          client_secret: config.client_secret
        },
        :return_type => 'Object')

      unless data && data[:access_token]
        fail ApiError.new(:code => status_code,
                          :response_headers => headers,
                          :response_body => data)
      end

      data
    end

    def auth_headers(http_method, url, body)
      { 'x-amz-access-token' => retrieve_lwa_access_token }
    end
  end
end
