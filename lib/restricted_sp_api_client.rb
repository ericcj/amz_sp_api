require 'api_error'
require 'api_client'
require 'configuration'
require 'sp_api_client'

require 'tokens-api-model'

module AmzSpApi
  class RestrictedSpApiClient < ApiClient

    def initialize(create_restricted_data_token_request, config = SpConfiguration.default)
      super(config)
      raise "pass create_restricted_data_token_request to RestrictedSpApiClient.new" if create_restricted_data_token_request.kind_of?(Configuration)
      @wrapped_client = SpApiClient.new(config)
      @create_restricted_data_token_request = create_restricted_data_token_request
      @cache_key = config.access_token_key + "-RDT-" + Digest::MD5.hexdigest(create_restricted_data_token_request.to_s)
    end

    alias_method :super_call_api, :call_api
    def call_api(http_method, path, opts = {})
      unsigned_request = build_request(http_method, path, opts)
      aws_headers = auth_headers(http_method, unsigned_request.url, unsigned_request.encoded_body)
      signed_opts = opts.merge(:header_params => aws_headers.merge(opts[:header_params] || {}))
      super(http_method, path, signed_opts)
    end

    private

    def retrieve_rdt_access_token
      return request_rdt_access_token[:access_token] unless config.get_access_token
      stored_token = config.get_access_token.call(@cache_key)
      if stored_token.nil?
        new_token = request_rdt_access_token
        config.save_access_token.call(@cache_key, new_token) if config.save_access_token
        return new_token[:access_token]
      else
        return stored_token
      end
    end

    def request_rdt_access_token
      api_tokens = AmzSpApi::TokensApiModel::TokensApi.new(@wrapped_client)
      response = api_tokens.create_restricted_data_token(@create_restricted_data_token_request)

      {access_token: response.restricted_data_token,
        expires_in: response.expires_in}
    end

    def auth_headers(http_method, url, body)
      SpApiClient.signed_request_headers(config, http_method, url, body).merge({
        'x-amz-access-token' => retrieve_rdt_access_token
      })
    end

  end
end
