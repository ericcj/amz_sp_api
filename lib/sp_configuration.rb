require 'configuration'

module AmzSpApi
  class SpConfiguration < Configuration
    attr_accessor :refresh_token, :client_id, :client_secret, :sandbox, :region,
      :aws_access_key_id, :aws_secret_access_key, :credentials_provider, # either access key or credentials_provider for AWS Signer, e.g. Aws::STS::Client
      :save_access_token, :get_access_token # optional lambdas for storing and retrieving token

    # from https://github.com/amzn/selling-partner-api-docs/blob/main/guides/developer-guide/SellingPartnerApiDeveloperGuide.md#selling-partner-api-endpoints
    AWS_REGION_MAP = {
      'na' => 'us-east-1',
      'eu' => 'eu-west-1',
      'fe' => 'us-west-2'
    }.freeze

    def aws_region
      AWS_REGION_MAP[region]
    end

    def region=(region)
      @region = region
      fail ApiError.new("#{region} is not supported or does not exist. Region must be one of the following: #{AWS_REGION_MAP.keys.join(', ')}") unless aws_region
      self.host = "#{sandbox ? "sandbox." : ""}sellingpartnerapi-#{region}.amazon.com"
      self.base_path = "/" # incorrectly set to full url by codegen
    end

    def sandbox=(sandbox)
      @sandbox = sandbox
      self.region = @region
    end

    def access_token_key
      Digest::MD5.hexdigest("#{client_id} #{refresh_token}")
    end

    def self.default
      @@default ||= SpConfiguration.new
    end
  end
end
