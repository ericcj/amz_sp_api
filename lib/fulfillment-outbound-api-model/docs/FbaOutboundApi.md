# AmzSpApi::FulfillmentOutboundApiModel::FbaOutboundApi

All URIs are relative to *https://sellingpartnerapi-na.amazon.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cancel_fulfillment_order**](FbaOutboundApi.md#cancel_fulfillment_order) | **PUT** /fba/outbound/2020-07-01/fulfillmentOrders/{sellerFulfillmentOrderId}/cancel | 
[**create_fulfillment_order**](FbaOutboundApi.md#create_fulfillment_order) | **POST** /fba/outbound/2020-07-01/fulfillmentOrders | 
[**create_fulfillment_return**](FbaOutboundApi.md#create_fulfillment_return) | **PUT** /fba/outbound/2020-07-01/fulfillmentOrders/{sellerFulfillmentOrderId}/return | 
[**delivery_offers**](FbaOutboundApi.md#delivery_offers) | **POST** /fba/outbound/2020-07-01/deliveryOffers | 
[**get_feature_inventory**](FbaOutboundApi.md#get_feature_inventory) | **GET** /fba/outbound/2020-07-01/features/inventory/{featureName} | 
[**get_feature_sku**](FbaOutboundApi.md#get_feature_sku) | **GET** /fba/outbound/2020-07-01/features/inventory/{featureName}/{sellerSku} | 
[**get_features**](FbaOutboundApi.md#get_features) | **GET** /fba/outbound/2020-07-01/features | 
[**get_fulfillment_order**](FbaOutboundApi.md#get_fulfillment_order) | **GET** /fba/outbound/2020-07-01/fulfillmentOrders/{sellerFulfillmentOrderId} | 
[**get_fulfillment_preview**](FbaOutboundApi.md#get_fulfillment_preview) | **POST** /fba/outbound/2020-07-01/fulfillmentOrders/preview | 
[**get_package_tracking_details**](FbaOutboundApi.md#get_package_tracking_details) | **GET** /fba/outbound/2020-07-01/tracking | 
[**list_all_fulfillment_orders**](FbaOutboundApi.md#list_all_fulfillment_orders) | **GET** /fba/outbound/2020-07-01/fulfillmentOrders | 
[**list_return_reason_codes**](FbaOutboundApi.md#list_return_reason_codes) | **GET** /fba/outbound/2020-07-01/returnReasonCodes | 
[**submit_fulfillment_order_status_update**](FbaOutboundApi.md#submit_fulfillment_order_status_update) | **PUT** /fba/outbound/2020-07-01/fulfillmentOrders/{sellerFulfillmentOrderId}/status | 
[**update_fulfillment_order**](FbaOutboundApi.md#update_fulfillment_order) | **PUT** /fba/outbound/2020-07-01/fulfillmentOrders/{sellerFulfillmentOrderId} | 

# **cancel_fulfillment_order**
> CancelFulfillmentOrderResponse cancel_fulfillment_order(seller_fulfillment_order_id)



Requests that Amazon stop attempting to fulfill the fulfillment order indicated by the specified order identifier.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 2 | 30 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may have higher rate and burst values than those shown here. For more information, refer to [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'fulfillment-outbound-api-model'

api_instance = AmzSpApi::FulfillmentOutboundApiModel::FbaOutboundApi.new
seller_fulfillment_order_id = 'seller_fulfillment_order_id_example' # String | The identifier assigned to the item by the seller when the fulfillment order was created.


begin
  result = api_instance.cancel_fulfillment_order(seller_fulfillment_order_id)
  p result
rescue AmzSpApi::FulfillmentOutboundApiModel::ApiError => e
  puts "Exception when calling FbaOutboundApi->cancel_fulfillment_order: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **seller_fulfillment_order_id** | **String**| The identifier assigned to the item by the seller when the fulfillment order was created. | 

### Return type

[**CancelFulfillmentOrderResponse**](CancelFulfillmentOrderResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **create_fulfillment_order**
> CreateFulfillmentOrderResponse create_fulfillment_order(body)



Requests that Amazon ship items from the seller's inventory in Amazon's fulfillment network to a destination address.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 2 | 30 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may have higher rate and burst values than those shown here. For more information, refer to [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api)

### Example
```ruby
# load the gem
require 'fulfillment-outbound-api-model'

api_instance = AmzSpApi::FulfillmentOutboundApiModel::FbaOutboundApi.new
body = AmzSpApi::FulfillmentOutboundApiModel::CreateFulfillmentOrderRequest.new # CreateFulfillmentOrderRequest | CreateFulfillmentOrderRequest parameter


begin
  result = api_instance.create_fulfillment_order(body)
  p result
rescue AmzSpApi::FulfillmentOutboundApiModel::ApiError => e
  puts "Exception when calling FbaOutboundApi->create_fulfillment_order: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateFulfillmentOrderRequest**](CreateFulfillmentOrderRequest.md)| CreateFulfillmentOrderRequest parameter | 

### Return type

[**CreateFulfillmentOrderResponse**](CreateFulfillmentOrderResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_fulfillment_return**
> CreateFulfillmentReturnResponse create_fulfillment_return(bodyseller_fulfillment_order_id)



Creates a fulfillment return.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 2 | 30 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may have higher rate and burst values than those shown here. For more information, refer to [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'fulfillment-outbound-api-model'

api_instance = AmzSpApi::FulfillmentOutboundApiModel::FbaOutboundApi.new
body = AmzSpApi::FulfillmentOutboundApiModel::CreateFulfillmentReturnRequest.new # CreateFulfillmentReturnRequest | The request body of the `createFulfillmentReturn` operation.
seller_fulfillment_order_id = 'seller_fulfillment_order_id_example' # String | An identifier the seller assigns to the fulfillment order at the time it was created. The seller uses their own records to find the correct `sellerFulfillmentOrderId` value based on the buyer's request to return items.


begin
  result = api_instance.create_fulfillment_return(bodyseller_fulfillment_order_id)
  p result
rescue AmzSpApi::FulfillmentOutboundApiModel::ApiError => e
  puts "Exception when calling FbaOutboundApi->create_fulfillment_return: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateFulfillmentReturnRequest**](CreateFulfillmentReturnRequest.md)| The request body of the &#x60;createFulfillmentReturn&#x60; operation. | 
 **seller_fulfillment_order_id** | **String**| An identifier the seller assigns to the fulfillment order at the time it was created. The seller uses their own records to find the correct &#x60;sellerFulfillmentOrderId&#x60; value based on the buyer&#x27;s request to return items. | 

### Return type

[**CreateFulfillmentReturnResponse**](CreateFulfillmentReturnResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, payload



# **delivery_offers**
> GetDeliveryOffersResponse delivery_offers(body)



Returns delivery options that include an estimated delivery date and offer expiration, based on criteria that you specify.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 5 | 30 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may have higher rate and burst values than those shown here. For more information, refer to [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'fulfillment-outbound-api-model'

api_instance = AmzSpApi::FulfillmentOutboundApiModel::FbaOutboundApi.new
body = AmzSpApi::FulfillmentOutboundApiModel::GetDeliveryOffersRequest.new # GetDeliveryOffersRequest | GetDeliveryOffersRequest parameter


begin
  result = api_instance.delivery_offers(body)
  p result
rescue AmzSpApi::FulfillmentOutboundApiModel::ApiError => e
  puts "Exception when calling FbaOutboundApi->delivery_offers: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**GetDeliveryOffersRequest**](GetDeliveryOffersRequest.md)| GetDeliveryOffersRequest parameter | 

### Return type

[**GetDeliveryOffersResponse**](GetDeliveryOffersResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, payload



# **get_feature_inventory**
> GetFeatureInventoryResponse get_feature_inventory(marketplace_id, feature_name, opts)



Returns a list of inventory items that are eligible for the fulfillment feature you specify.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 2 | 30 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may have higher rate and burst values than those shown here. For more information, refer to [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api)..

### Example
```ruby
# load the gem
require 'fulfillment-outbound-api-model'

api_instance = AmzSpApi::FulfillmentOutboundApiModel::FbaOutboundApi.new
marketplace_id = 'marketplace_id_example' # String | The marketplace for which to return a list of the inventory that is eligible for the specified feature.
feature_name = 'feature_name_example' # String | The name of the feature for which to return a list of eligible inventory.
opts = { 
  next_token: 'next_token_example', # String | A string token returned in the response to your previous request that is used to return the next response page. A value of `null` will return the first page.
  query_start_date: DateTime.parse('2013-10-20T19:20:30+01:00') # DateTime | A date that you can use to select inventory that has been updated since a specified date. An update is defined as any change in feature-enabled inventory availability. The date must be in the format `yyyy-MM-ddTHH:mm:ss.sssZ`
}

begin
  result = api_instance.get_feature_inventory(marketplace_id, feature_name, opts)
  p result
rescue AmzSpApi::FulfillmentOutboundApiModel::ApiError => e
  puts "Exception when calling FbaOutboundApi->get_feature_inventory: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **marketplace_id** | **String**| The marketplace for which to return a list of the inventory that is eligible for the specified feature. | 
 **feature_name** | **String**| The name of the feature for which to return a list of eligible inventory. | 
 **next_token** | **String**| A string token returned in the response to your previous request that is used to return the next response page. A value of &#x60;null&#x60; will return the first page. | [optional] 
 **query_start_date** | **DateTime**| A date that you can use to select inventory that has been updated since a specified date. An update is defined as any change in feature-enabled inventory availability. The date must be in the format &#x60;yyyy-MM-ddTHH:mm:ss.sssZ&#x60; | [optional] 

### Return type

[**GetFeatureInventoryResponse**](GetFeatureInventoryResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, payload



# **get_feature_sku**
> GetFeatureSkuResponse get_feature_sku(marketplace_id, feature_name, seller_sku)



Returns the number of items with the `sellerSku` you specify that can have orders fulfilled using the specified feature. Note that if the `sellerSku` isn't eligible, the response will contain an empty `skuInfo` object. The parameters for this operation may contain special characters that require URL encoding. To avoid errors with SKUs when encoding URLs, refer to [URL Encoding](https://developer-docs.amazon.com/sp-api/docs/url-encoding).  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 2 | 30 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The preceding table indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values than those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'fulfillment-outbound-api-model'

api_instance = AmzSpApi::FulfillmentOutboundApiModel::FbaOutboundApi.new
marketplace_id = 'marketplace_id_example' # String | The marketplace for which to return the count.
feature_name = 'feature_name_example' # String | The name of the feature.
seller_sku = 'seller_sku_example' # String | Used to identify an item in the given marketplace. `sellerSku` is qualified by the seller's `sellerId`, which is included with every operation that you submit.


begin
  result = api_instance.get_feature_sku(marketplace_id, feature_name, seller_sku)
  p result
rescue AmzSpApi::FulfillmentOutboundApiModel::ApiError => e
  puts "Exception when calling FbaOutboundApi->get_feature_sku: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **marketplace_id** | **String**| The marketplace for which to return the count. | 
 **feature_name** | **String**| The name of the feature. | 
 **seller_sku** | **String**| Used to identify an item in the given marketplace. &#x60;sellerSku&#x60; is qualified by the seller&#x27;s &#x60;sellerId&#x60;, which is included with every operation that you submit. | 

### Return type

[**GetFeatureSkuResponse**](GetFeatureSkuResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, payload



# **get_features**
> GetFeaturesResponse get_features(marketplace_id)



Returns a list of features available for Multi-Channel Fulfillment orders in the marketplace you specify, and whether the seller for which you made the call is enrolled for each feature.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 2 | 30 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may have higher rate and burst values than those shown here. For more information, refer to [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'fulfillment-outbound-api-model'

api_instance = AmzSpApi::FulfillmentOutboundApiModel::FbaOutboundApi.new
marketplace_id = 'marketplace_id_example' # String | The marketplace for which to return the list of features.


begin
  result = api_instance.get_features(marketplace_id)
  p result
rescue AmzSpApi::FulfillmentOutboundApiModel::ApiError => e
  puts "Exception when calling FbaOutboundApi->get_features: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **marketplace_id** | **String**| The marketplace for which to return the list of features. | 

### Return type

[**GetFeaturesResponse**](GetFeaturesResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, payload



# **get_fulfillment_order**
> GetFulfillmentOrderResponse get_fulfillment_order(seller_fulfillment_order_id)



Returns the fulfillment order indicated by the specified order identifier.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 2 | 30 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may have higher rate and burst values than those shown here. For more information, refer to [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'fulfillment-outbound-api-model'

api_instance = AmzSpApi::FulfillmentOutboundApiModel::FbaOutboundApi.new
seller_fulfillment_order_id = 'seller_fulfillment_order_id_example' # String | The identifier assigned to the item by the seller when the fulfillment order was created.


begin
  result = api_instance.get_fulfillment_order(seller_fulfillment_order_id)
  p result
rescue AmzSpApi::FulfillmentOutboundApiModel::ApiError => e
  puts "Exception when calling FbaOutboundApi->get_fulfillment_order: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **seller_fulfillment_order_id** | **String**| The identifier assigned to the item by the seller when the fulfillment order was created. | 

### Return type

[**GetFulfillmentOrderResponse**](GetFulfillmentOrderResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, payload



# **get_fulfillment_preview**
> GetFulfillmentPreviewResponse get_fulfillment_preview(body)



Returns a list of fulfillment order previews based on shipping criteria that you specify.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 2 | 30 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may have higher rate and burst values than those shown here. For more information, refer to [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'fulfillment-outbound-api-model'

api_instance = AmzSpApi::FulfillmentOutboundApiModel::FbaOutboundApi.new
body = AmzSpApi::FulfillmentOutboundApiModel::GetFulfillmentPreviewRequest.new # GetFulfillmentPreviewRequest | GetFulfillmentPreviewRequest parameter


begin
  result = api_instance.get_fulfillment_preview(body)
  p result
rescue AmzSpApi::FulfillmentOutboundApiModel::ApiError => e
  puts "Exception when calling FbaOutboundApi->get_fulfillment_preview: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**GetFulfillmentPreviewRequest**](GetFulfillmentPreviewRequest.md)| GetFulfillmentPreviewRequest parameter | 

### Return type

[**GetFulfillmentPreviewResponse**](GetFulfillmentPreviewResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, payload



# **get_package_tracking_details**
> GetPackageTrackingDetailsResponse get_package_tracking_details(package_number)



Returns delivery tracking information for a package in an outbound shipment for a Multi-Channel Fulfillment order.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 2 | 30 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may have higher rate and burst values than those shown here. For more information, refer to [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'fulfillment-outbound-api-model'

api_instance = AmzSpApi::FulfillmentOutboundApiModel::FbaOutboundApi.new
package_number = 56 # Integer | The unencrypted package identifier. You can obtain this value from the `getFulfillmentOrder` operation.


begin
  result = api_instance.get_package_tracking_details(package_number)
  p result
rescue AmzSpApi::FulfillmentOutboundApiModel::ApiError => e
  puts "Exception when calling FbaOutboundApi->get_package_tracking_details: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **package_number** | **Integer**| The unencrypted package identifier. You can obtain this value from the &#x60;getFulfillmentOrder&#x60; operation. | 

### Return type

[**GetPackageTrackingDetailsResponse**](GetPackageTrackingDetailsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, payload



# **list_all_fulfillment_orders**
> ListAllFulfillmentOrdersResponse list_all_fulfillment_orders(opts)



Returns a list of fulfillment orders fulfilled after (or at) a specified date-time, or indicated by the `nextToken` parameter.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 2 | 30 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The preceding table indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values than those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api)

### Example
```ruby
# load the gem
require 'fulfillment-outbound-api-model'

api_instance = AmzSpApi::FulfillmentOutboundApiModel::FbaOutboundApi.new
opts = { 
  query_start_date: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | A date used to select fulfillment orders that were last updated after (or at) a specified time. An update is defined as any change in fulfillment order status, including the creation of a new fulfillment order.
  next_token: 'next_token_example' # String | A string token returned in the response to your previous request.
}

begin
  result = api_instance.list_all_fulfillment_orders(opts)
  p result
rescue AmzSpApi::FulfillmentOutboundApiModel::ApiError => e
  puts "Exception when calling FbaOutboundApi->list_all_fulfillment_orders: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query_start_date** | **DateTime**| A date used to select fulfillment orders that were last updated after (or at) a specified time. An update is defined as any change in fulfillment order status, including the creation of a new fulfillment order. | [optional] 
 **next_token** | **String**| A string token returned in the response to your previous request. | [optional] 

### Return type

[**ListAllFulfillmentOrdersResponse**](ListAllFulfillmentOrdersResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, payload



# **list_return_reason_codes**
> ListReturnReasonCodesResponse list_return_reason_codes(seller_sku, opts)



Returns a list of return reason codes for a seller SKU in a given marketplace. The parameters for this operation may contain special characters that require URL encoding. To avoid errors with SKUs when encoding URLs, refer to [URL Encoding](https://developer-docs.amazon.com/sp-api/docs/url-encoding).  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 2 | 30 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may have higher rate and burst values than those shown here. For more information, refer to [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'fulfillment-outbound-api-model'

api_instance = AmzSpApi::FulfillmentOutboundApiModel::FbaOutboundApi.new
seller_sku = 'seller_sku_example' # String | The seller SKU for which return reason codes are required.
opts = { 
  marketplace_id: 'marketplace_id_example', # String | The marketplace for which the seller wants return reason codes.
  seller_fulfillment_order_id: 'seller_fulfillment_order_id_example', # String | The identifier assigned to the item by the seller when the fulfillment order was created. The service uses this value to determine the marketplace for which the seller wants return reason codes.
  language: 'language_example' # String | The language that the `TranslatedDescription` property of the `ReasonCodeDetails` response object should be translated into.
}

begin
  result = api_instance.list_return_reason_codes(seller_sku, opts)
  p result
rescue AmzSpApi::FulfillmentOutboundApiModel::ApiError => e
  puts "Exception when calling FbaOutboundApi->list_return_reason_codes: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **seller_sku** | **String**| The seller SKU for which return reason codes are required. | 
 **marketplace_id** | **String**| The marketplace for which the seller wants return reason codes. | [optional] 
 **seller_fulfillment_order_id** | **String**| The identifier assigned to the item by the seller when the fulfillment order was created. The service uses this value to determine the marketplace for which the seller wants return reason codes. | [optional] 
 **language** | **String**| The language that the &#x60;TranslatedDescription&#x60; property of the &#x60;ReasonCodeDetails&#x60; response object should be translated into. | [optional] 

### Return type

[**ListReturnReasonCodesResponse**](ListReturnReasonCodesResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, payload



# **submit_fulfillment_order_status_update**
> SubmitFulfillmentOrderStatusUpdateResponse submit_fulfillment_order_status_update(bodyseller_fulfillment_order_id)



Requests that Amazon update the status of an order in the sandbox testing environment. This is a sandbox-only operation and must be directed to a sandbox endpoint. Refer to [Fulfillment Outbound Dynamic Sandbox Guide](https://developer-docs.amazon.com/sp-api/docs/fulfillment-outbound-dynamic-sandbox-guide) and [Selling Partner API sandbox](https://developer-docs.amazon.com/sp-api/docs/the-selling-partner-api-sandbox) for more information.

### Example
```ruby
# load the gem
require 'fulfillment-outbound-api-model'

api_instance = AmzSpApi::FulfillmentOutboundApiModel::FbaOutboundApi.new
body = AmzSpApi::FulfillmentOutboundApiModel::SubmitFulfillmentOrderStatusUpdateRequest.new # SubmitFulfillmentOrderStatusUpdateRequest | The identifier assigned to the item by the seller when the fulfillment order was created.
seller_fulfillment_order_id = 'seller_fulfillment_order_id_example' # String | The identifier assigned to the item by the seller when the fulfillment order was created.


begin
  result = api_instance.submit_fulfillment_order_status_update(bodyseller_fulfillment_order_id)
  p result
rescue AmzSpApi::FulfillmentOutboundApiModel::ApiError => e
  puts "Exception when calling FbaOutboundApi->submit_fulfillment_order_status_update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SubmitFulfillmentOrderStatusUpdateRequest**](SubmitFulfillmentOrderStatusUpdateRequest.md)| The identifier assigned to the item by the seller when the fulfillment order was created. | 
 **seller_fulfillment_order_id** | **String**| The identifier assigned to the item by the seller when the fulfillment order was created. | 

### Return type

[**SubmitFulfillmentOrderStatusUpdateResponse**](SubmitFulfillmentOrderStatusUpdateResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_fulfillment_order**
> UpdateFulfillmentOrderResponse update_fulfillment_order(bodyseller_fulfillment_order_id)



Updates and/or requests shipment for a fulfillment order with an order hold on it.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 2 | 30 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may have higher rate and burst values than those shown here. For more information, refer to [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'fulfillment-outbound-api-model'

api_instance = AmzSpApi::FulfillmentOutboundApiModel::FbaOutboundApi.new
body = AmzSpApi::FulfillmentOutboundApiModel::UpdateFulfillmentOrderRequest.new # UpdateFulfillmentOrderRequest | The request body of the `updateFulfillmentOrder` operation.
seller_fulfillment_order_id = 'seller_fulfillment_order_id_example' # String | The identifier assigned to the item by the seller when the fulfillment order was created.


begin
  result = api_instance.update_fulfillment_order(bodyseller_fulfillment_order_id)
  p result
rescue AmzSpApi::FulfillmentOutboundApiModel::ApiError => e
  puts "Exception when calling FbaOutboundApi->update_fulfillment_order: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**UpdateFulfillmentOrderRequest**](UpdateFulfillmentOrderRequest.md)| The request body of the &#x60;updateFulfillmentOrder&#x60; operation. | 
 **seller_fulfillment_order_id** | **String**| The identifier assigned to the item by the seller when the fulfillment order was created. | 

### Return type

[**UpdateFulfillmentOrderResponse**](UpdateFulfillmentOrderResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



