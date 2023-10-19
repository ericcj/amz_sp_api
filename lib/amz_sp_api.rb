require 'amz_sp_api_version'
require 'api_error'
require 'sp_configuration'
require 'sp_api_client'
require 'restricted_sp_api_client'

module AmzSpApi
  class << self
    # Customize default settings for the SDK using block.
    #   AmzSpApi.configure do |config|
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(SpConfiguration.default)
      else
        SpConfiguration.default
      end
    end

    def inflate_document(body, document_response)
      compression = document_response.compression_algorithm
      return body unless compression
      raise AmzSpApi::ApiError.new("unknown compressionAlgorithm #{compression}") if compression != "GZIP"
      Zlib.gunzip(body)
    end
  end
end
