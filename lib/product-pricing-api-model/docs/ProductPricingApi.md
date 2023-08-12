# AmzSpApi::ProductPricingApiModel::ProductPricingApi

All URIs are relative to *https://sellingpartnerapi-na.amazon.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_featured_offer_expected_price_batch**](ProductPricingApi.md#get_featured_offer_expected_price_batch) | **POST** /batches/products/pricing/2022-05-01/offer/featuredOfferExpectedPrice | 

# **get_featured_offer_expected_price_batch**
> GetFeaturedOfferExpectedPriceBatchResponse get_featured_offer_expected_price_batch(body)



Returns the set of responses that correspond to the batched list of up to 40 requests defined in the request body. The response for each successful (HTTP status code 200) request in the set includes the computed listing price at or below which a seller can expect to become the featured offer (before applicable promotions). This is called the featured offer expected price (FOEP). Featured offer is not guaranteed, because competing offers may change, and different offers may be featured based on other factors, including fulfillment capabilities to a specific customer. The response to an unsuccessful request includes the available error text.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 0.033 | 1 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values than those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](doc:usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'product-pricing-api-model'

api_instance = AmzSpApi::ProductPricingApiModel::ProductPricingApi.new
body = AmzSpApi::ProductPricingApiModel::GetFeaturedOfferExpectedPriceBatchRequest.new # GetFeaturedOfferExpectedPriceBatchRequest | 


begin
  result = api_instance.get_featured_offer_expected_price_batch(body)
  p result
rescue AmzSpApi::ProductPricingApiModel::ApiError => e
  puts "Exception when calling ProductPricingApi->get_featured_offer_expected_price_batch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**GetFeaturedOfferExpectedPriceBatchRequest**](GetFeaturedOfferExpectedPriceBatchRequest.md)|  | 

### Return type

[**GetFeaturedOfferExpectedPriceBatchResponse**](GetFeaturedOfferExpectedPriceBatchResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



