require 'amz_sp_api_version'
require 'sp_api_client'
require 'sp_configuration'

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
  end
end
