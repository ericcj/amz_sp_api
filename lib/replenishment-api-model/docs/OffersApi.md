# AmzSpApi::ReplenishmentApiModel::OffersApi

All URIs are relative to *https://sellingpartnerapi-na.amazon.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**list_offer_metrics**](OffersApi.md#list_offer_metrics) | **POST** /replenishment/2022-11-07/offers/metrics/search | 
[**list_offers**](OffersApi.md#list_offers) | **POST** /replenishment/2022-11-07/offers/search | 

# **list_offer_metrics**
> ListOfferMetricsResponse list_offer_metrics(opts)



Returns aggregated replenishment program metrics for a selling partner's offers.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 1 | 1 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values than those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'replenishment-api-model'

api_instance = AmzSpApi::ReplenishmentApiModel::OffersApi.new
opts = { 
  body: AmzSpApi::ReplenishmentApiModel::ListOfferMetricsRequest.new # ListOfferMetricsRequest | The request body for the `listOfferMetrics` operation.
}

begin
  result = api_instance.list_offer_metrics(opts)
  p result
rescue AmzSpApi::ReplenishmentApiModel::ApiError => e
  puts "Exception when calling OffersApi->list_offer_metrics: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**ListOfferMetricsRequest**](ListOfferMetricsRequest.md)| The request body for the &#x60;listOfferMetrics&#x60; operation. | [optional] 

### Return type

[**ListOfferMetricsResponse**](ListOfferMetricsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list_offers**
> ListOffersResponse list_offers(opts)



Returns the details of a selling partner's replenishment program offers.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 1 | 1 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values than those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'replenishment-api-model'

api_instance = AmzSpApi::ReplenishmentApiModel::OffersApi.new
opts = { 
  body: AmzSpApi::ReplenishmentApiModel::ListOffersRequest.new # ListOffersRequest | The request body for the `listOffers` operation.
}

begin
  result = api_instance.list_offers(opts)
  p result
rescue AmzSpApi::ReplenishmentApiModel::ApiError => e
  puts "Exception when calling OffersApi->list_offers: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**ListOffersRequest**](ListOffersRequest.md)| The request body for the &#x60;listOffers&#x60; operation. | [optional] 

### Return type

[**ListOffersResponse**](ListOffersResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



