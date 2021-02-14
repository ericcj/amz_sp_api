# AmzSpApi::ProductFeesApiModel::FeesApi

All URIs are relative to *https://sellingpartnerapi-na.amazon.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_my_fees_estimate_for_asin**](FeesApi.md#get_my_fees_estimate_for_asin) | **POST** /products/fees/v0/items/{Asin}/feesEstimate | 
[**get_my_fees_estimate_for_sku**](FeesApi.md#get_my_fees_estimate_for_sku) | **POST** /products/fees/v0/listings/{SellerSKU}/feesEstimate | 

# **get_my_fees_estimate_for_asin**
> GetMyFeesEstimateResponse get_my_fees_estimate_for_asin(bodyasin)



Returns the estimated fees for the item indicated by the specified Asin in the marketplace specified in the request body.  You can call getMyFeesEstimateForASIN for an item on behalf of a seller before the seller sets the item's price. They can then take estimated fees into account. With each product fees request, you must include an original identifier. This identifier is included in the fees estimate so you can correlate a fees estimate with the original request.  **Usage Plans:**  | Plan type | Rate (requests per second) | Burst | | ---- | ---- | ---- | |Default| 1 | 1 | |Selling partner specific| Variable | Variable |  The x-amzn-RateLimit-Limit response header returns the usage plan rate limits that were applied to the requested operation. Rate limits for some selling partners will vary from the default rate and burst shown in the table above. For more information, see \"Usage Plans and Rate Limits\" in the Selling Partner API documentation.

### Example
```ruby
# load the gem
require 'product-fees-api-model'

api_instance = AmzSpApi::ProductFeesApiModel::FeesApi.new
body = AmzSpApi::ProductFeesApiModel::GetMyFeesEstimateRequest.new # GetMyFeesEstimateRequest | 
asin = 'asin_example' # String | The Amazon Standard Identification Number (ASIN) of the item.


begin
  result = api_instance.get_my_fees_estimate_for_asin(bodyasin)
  p result
rescue AmzSpApi::ProductFeesApiModel::ApiError => e
  puts "Exception when calling FeesApi->get_my_fees_estimate_for_asin: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**GetMyFeesEstimateRequest**](GetMyFeesEstimateRequest.md)|  | 
 **asin** | **String**| The Amazon Standard Identification Number (ASIN) of the item. | 

### Return type

[**GetMyFeesEstimateResponse**](GetMyFeesEstimateResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_my_fees_estimate_for_sku**
> GetMyFeesEstimateResponse get_my_fees_estimate_for_sku(bodyseller_sku)



Returns the estimated fees for the item indicated by the specified seller SKU in the marketplace specified in the request body.  You can call getMyFeesEstimateForSKU for an item on behalf of a seller before the seller sets the item's price. They can then take estimated fees into account. With each fees estimate request, you must include an original identifier. This identifier is included in the fees estimate so you can correlate a fees estimate with the original request.  **Usage Plans:**  | Plan type | Rate (requests per second) | Burst | | ---- | ---- | ---- | |Default| 1 | 1 | |Selling partner specific| Variable | Variable |  The x-amzn-RateLimit-Limit response header returns the usage plan rate limits that were applied to the requested operation. Rate limits for some selling partners will vary from the default rate and burst shown in the table above. For more information, see \"Usage Plans and Rate Limits\" in the Selling Partner API documentation.

### Example
```ruby
# load the gem
require 'product-fees-api-model'

api_instance = AmzSpApi::ProductFeesApiModel::FeesApi.new
body = AmzSpApi::ProductFeesApiModel::GetMyFeesEstimateRequest.new # GetMyFeesEstimateRequest | 
seller_sku = 'seller_sku_example' # String | Used to identify an item in the given marketplace. SellerSKU is qualified by the seller's SellerId, which is included with every operation that you submit.


begin
  result = api_instance.get_my_fees_estimate_for_sku(bodyseller_sku)
  p result
rescue AmzSpApi::ProductFeesApiModel::ApiError => e
  puts "Exception when calling FeesApi->get_my_fees_estimate_for_sku: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**GetMyFeesEstimateRequest**](GetMyFeesEstimateRequest.md)|  | 
 **seller_sku** | **String**| Used to identify an item in the given marketplace. SellerSKU is qualified by the seller&#x27;s SellerId, which is included with every operation that you submit. | 

### Return type

[**GetMyFeesEstimateResponse**](GetMyFeesEstimateResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



