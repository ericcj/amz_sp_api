=begin
#Selling Partner APIs for Fulfillment Outbound

#The Selling Partner API for Fulfillment Outbound lets you create applications that help a seller fulfill Multi-Channel Fulfillment orders using their inventory in Amazon's fulfillment network. You can get information on both potential and existing fulfillment orders.

OpenAPI spec version: 2020-07-01

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.46
=end

require 'date'

module AmzSpApi::FulfillmentOutboundApiModel
  class FulfillmentPolicy
    FILL_OR_KILL = 'FillOrKill'.freeze
    FILL_ALL = 'FillAll'.freeze
    FILL_ALL_AVAILABLE = 'FillAllAvailable'.freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = FulfillmentPolicy.constants.select { |c| FulfillmentPolicy::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #FulfillmentPolicy" if constantValues.empty?
      value
    end
  end
end
