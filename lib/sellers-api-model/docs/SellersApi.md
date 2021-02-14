# AmzSpApi::SellersApiModel::SellersApi

All URIs are relative to *https://sellingpartnerapi-na.amazon.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_marketplace_participations**](SellersApi.md#get_marketplace_participations) | **GET** /sellers/v1/marketplaceParticipations | 

# **get_marketplace_participations**
> GetMarketplaceParticipationsResponse get_marketplace_participations



Returns a list of marketplaces that the seller submitting the request can sell in and information about the seller's participation in those marketplaces.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | .016 | 15 |  For more information, see \"Usage Plans and Rate Limits\" in the Selling Partner API documentation.

### Example
```ruby
# load the gem
require 'sellers-api-model'

api_instance = AmzSpApi::SellersApiModel::SellersApi.new

begin
  result = api_instance.get_marketplace_participations
  p result
rescue AmzSpApi::SellersApiModel::ApiError => e
  puts "Exception when calling SellersApi->get_marketplace_participations: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**GetMarketplaceParticipationsResponse**](GetMarketplaceParticipationsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, payload



