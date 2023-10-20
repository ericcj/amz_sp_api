=begin
#Selling Partner API for Product Fees

#The Selling Partner API for Product Fees lets you programmatically retrieve estimated fees for a product. You can then account for those fees in your pricing.

OpenAPI spec version: v0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.46
=end

# Common files
require 'product-fees-api-model/api_client'
require 'product-fees-api-model/api_error'
require 'product-fees-api-model/version'
require 'product-fees-api-model/configuration'

# Models
require 'product-fees-api-model/models/error'
require 'product-fees-api-model/models/error_list'
require 'product-fees-api-model/models/fee_detail'
require 'product-fees-api-model/models/fee_detail_list'
require 'product-fees-api-model/models/fees_estimate'
require 'product-fees-api-model/models/fees_estimate_by_id_request'
require 'product-fees-api-model/models/fees_estimate_error'
require 'product-fees-api-model/models/fees_estimate_error_detail'
require 'product-fees-api-model/models/fees_estimate_identifier'
require 'product-fees-api-model/models/fees_estimate_request'
require 'product-fees-api-model/models/fees_estimate_result'
require 'product-fees-api-model/models/get_my_fees_estimate_request'
require 'product-fees-api-model/models/get_my_fees_estimate_response'
require 'product-fees-api-model/models/get_my_fees_estimate_result'
require 'product-fees-api-model/models/get_my_fees_estimates_error_list'
require 'product-fees-api-model/models/get_my_fees_estimates_request'
require 'product-fees-api-model/models/get_my_fees_estimates_response'
require 'product-fees-api-model/models/id_type'
require 'product-fees-api-model/models/included_fee_detail'
require 'product-fees-api-model/models/included_fee_detail_list'
require 'product-fees-api-model/models/money_type'
require 'product-fees-api-model/models/optional_fulfillment_program'
require 'product-fees-api-model/models/points'
require 'product-fees-api-model/models/price_to_estimate_fees'

# APIs
require 'product-fees-api-model/api/fees_api'

module AmzSpApi::ProductFeesApiModel
  class << self
    # Customize default settings for the SDK using block.
    #   AmzSpApi::ProductFeesApiModel.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
