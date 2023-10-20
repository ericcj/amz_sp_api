=begin
#Selling Partner API for Pricing

#The Selling Partner API for Pricing helps you programmatically retrieve product pricing and offer pricing information for Amazon Marketplace products.  For more information, see the [Product Pricing v2022-05-01 Use Case Guide](doc:product-pricing-api-v2022-05-01-use-case-guide).

OpenAPI spec version: 2022-05-01

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.46
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for AmzSpApi::ProductPricingApiModel::FeaturedOfferExpectedPriceResponseList
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'FeaturedOfferExpectedPriceResponseList' do
  before do
    # run before each test
    @instance = AmzSpApi::ProductPricingApiModel::FeaturedOfferExpectedPriceResponseList.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of FeaturedOfferExpectedPriceResponseList' do
    it 'should create an instance of FeaturedOfferExpectedPriceResponseList' do
      expect(@instance).to be_instance_of(AmzSpApi::ProductPricingApiModel::FeaturedOfferExpectedPriceResponseList)
    end
  end
end