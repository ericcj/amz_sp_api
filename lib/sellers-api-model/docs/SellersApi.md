# AmzSpApi::SellersApiModel::SellersApi

All URIs are relative to *https://sellingpartnerapi-na.amazon.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_account**](SellersApi.md#get_account) | **GET** /sellers/v1/account | 
[**get_marketplace_participations**](SellersApi.md#get_marketplace_participations) | **GET** /sellers/v1/marketplaceParticipations | 

# **get_account**
> GetAccountResponse get_account



Returns information about a seller account and its marketplaces.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 0.016 | 15 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The preceding table indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may have higher rate and burst values than those shown here. For more information, refer to [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'sellers-api-model'

api_instance = AmzSpApi::SellersApiModel::SellersApi.new

begin
  result = api_instance.get_account
  p result
rescue AmzSpApi::SellersApiModel::ApiError => e
  puts "Exception when calling SellersApi->get_account: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**GetAccountResponse**](GetAccountResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_marketplace_participations**
> GetMarketplaceParticipationsResponse get_marketplace_participations



Returns a list of marketplaces where the seller can list items and information about the seller's participation in those marketplaces.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 0.016 | 15 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The preceding table indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may have higher rate and burst values than those shown here. For more information, refer to [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).

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



