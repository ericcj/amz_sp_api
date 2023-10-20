=begin
#Selling Partner API for Orders

#The Selling Partner API for Orders helps you programmatically retrieve order information. These APIs let you develop fast, flexible, custom applications in areas like order synchronization, order research, and demand-based decision support tools. The Orders API only supports orders that are less than two years old. Orders more than two years old will not show in the API response.

OpenAPI spec version: v0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.46
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for AmzSpApi::OrdersApiModel::PaymentExecutionDetailItem
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'PaymentExecutionDetailItem' do
  before do
    # run before each test
    @instance = AmzSpApi::OrdersApiModel::PaymentExecutionDetailItem.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of PaymentExecutionDetailItem' do
    it 'should create an instance of PaymentExecutionDetailItem' do
      expect(@instance).to be_instance_of(AmzSpApi::OrdersApiModel::PaymentExecutionDetailItem)
    end
  end
  describe 'test attribute "payment"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "payment_method"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
