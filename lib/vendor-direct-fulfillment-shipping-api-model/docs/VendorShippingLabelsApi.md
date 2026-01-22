# AmzSpApi::VendorDirectFulfillmentShippingApiModel::VendorShippingLabelsApi

All URIs are relative to *https://sellingpartnerapi-na.amazon.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_shipping_label**](VendorShippingLabelsApi.md#get_shipping_label) | **GET** /vendor/directFulfillment/shipping/v1/shippingLabels/{purchaseOrderNumber} | 
[**get_shipping_labels**](VendorShippingLabelsApi.md#get_shipping_labels) | **GET** /vendor/directFulfillment/shipping/v1/shippingLabels | 
[**submit_shipping_label_request**](VendorShippingLabelsApi.md#submit_shipping_label_request) | **POST** /vendor/directFulfillment/shipping/v1/shippingLabels | 

# **get_shipping_label**
> GetShippingLabelResponse get_shipping_label(purchase_order_number)



Returns a shipping label for the purchaseOrderNumber that you specify.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 10 | 10 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values than those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'vendor-direct-fulfillment-shipping-api-model'

api_instance = AmzSpApi::VendorDirectFulfillmentShippingApiModel::VendorShippingLabelsApi.new
purchase_order_number = 'purchase_order_number_example' # String | The purchase order number for which you want to return the shipping label. It should be the same purchaseOrderNumber as received in the order.


begin
  result = api_instance.get_shipping_label(purchase_order_number)
  p result
rescue AmzSpApi::VendorDirectFulfillmentShippingApiModel::ApiError => e
  puts "Exception when calling VendorShippingLabelsApi->get_shipping_label: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **purchase_order_number** | **String**| The purchase order number for which you want to return the shipping label. It should be the same purchaseOrderNumber as received in the order. | 

### Return type

[**GetShippingLabelResponse**](GetShippingLabelResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_shipping_labels**
> GetShippingLabelListResponse get_shipping_labels(created_after, created_before, opts)



Returns a list of shipping labels created during the time frame that you specify. You define that time frame using the createdAfter and createdBefore parameters. You must use both of these parameters. The date range to search must not be more than 7 days.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 10 | 10 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values than those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'vendor-direct-fulfillment-shipping-api-model'

api_instance = AmzSpApi::VendorDirectFulfillmentShippingApiModel::VendorShippingLabelsApi.new
created_after = DateTime.parse('2013-10-20T19:20:30+01:00') # DateTime | Shipping labels that became available after this date and time will be included in the result. Must be in ISO-8601 date/time format.
created_before = DateTime.parse('2013-10-20T19:20:30+01:00') # DateTime | Shipping labels that became available before this date and time will be included in the result. Must be in ISO-8601 date/time format.
opts = { 
  ship_from_party_id: 'ship_from_party_id_example', # String | The vendor warehouseId for order fulfillment. If not specified, the result will contain orders for all warehouses.
  limit: 56, # Integer | The limit to the number of records returned.
  sort_order: 'ASC', # String | Sort ASC or DESC by order creation date.
  next_token: 'next_token_example' # String | Used for pagination when there are more ship labels than the specified result size limit. The token value is returned in the previous API call.
}

begin
  result = api_instance.get_shipping_labels(created_after, created_before, opts)
  p result
rescue AmzSpApi::VendorDirectFulfillmentShippingApiModel::ApiError => e
  puts "Exception when calling VendorShippingLabelsApi->get_shipping_labels: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **created_after** | **DateTime**| Shipping labels that became available after this date and time will be included in the result. Must be in ISO-8601 date/time format. | 
 **created_before** | **DateTime**| Shipping labels that became available before this date and time will be included in the result. Must be in ISO-8601 date/time format. | 
 **ship_from_party_id** | **String**| The vendor warehouseId for order fulfillment. If not specified, the result will contain orders for all warehouses. | [optional] 
 **limit** | **Integer**| The limit to the number of records returned. | [optional] 
 **sort_order** | **String**| Sort ASC or DESC by order creation date. | [optional] [default to ASC]
 **next_token** | **String**| Used for pagination when there are more ship labels than the specified result size limit. The token value is returned in the previous API call. | [optional] 

### Return type

[**GetShippingLabelListResponse**](GetShippingLabelListResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, payload



# **submit_shipping_label_request**
> SubmitShippingLabelsResponse submit_shipping_label_request(body)



Creates a shipping label for a purchase order and returns a transactionId for reference.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 10 | 10 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values than those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'vendor-direct-fulfillment-shipping-api-model'

api_instance = AmzSpApi::VendorDirectFulfillmentShippingApiModel::VendorShippingLabelsApi.new
body = AmzSpApi::VendorDirectFulfillmentShippingApiModel::SubmitShippingLabelsRequest.new # SubmitShippingLabelsRequest | Request body containing one or more shipping labels data.


begin
  result = api_instance.submit_shipping_label_request(body)
  p result
rescue AmzSpApi::VendorDirectFulfillmentShippingApiModel::ApiError => e
  puts "Exception when calling VendorShippingLabelsApi->submit_shipping_label_request: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SubmitShippingLabelsRequest**](SubmitShippingLabelsRequest.md)| Request body containing one or more shipping labels data. | 

### Return type

[**SubmitShippingLabelsResponse**](SubmitShippingLabelsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



