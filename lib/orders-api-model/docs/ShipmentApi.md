# AmzSpApi::OrdersApiModel::ShipmentApi

All URIs are relative to *https://sellingpartnerapi-na.amazon.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**update_shipment_status**](ShipmentApi.md#update_shipment_status) | **POST** /orders/v0/orders/{orderId}/shipment | 

# **update_shipment_status**
> update_shipment_status(bodyorder_id)



Update the shipment status for an order that you specify.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 5 | 15 |  The `x-amzn-RateLimit-Limit` response header contains the usage plan rate limits for the operation, when available. The preceding table contains the default rate and burst values for this operation. Selling partners whose business demands require higher throughput might have higher rate and burst values than those shown here. For more information, refer to [Usage Plans and Rate Limits](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'orders-api-model'

api_instance = AmzSpApi::OrdersApiModel::ShipmentApi.new
body = AmzSpApi::OrdersApiModel::UpdateShipmentStatusRequest.new # UpdateShipmentStatusRequest | The request body for the `updateShipmentStatus` operation.
order_id = 'order_id_example' # String | An Amazon-defined order identifier, in 3-7-7 format.


begin
  api_instance.update_shipment_status(bodyorder_id)
rescue AmzSpApi::OrdersApiModel::ApiError => e
  puts "Exception when calling ShipmentApi->update_shipment_status: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**UpdateShipmentStatusRequest**](UpdateShipmentStatusRequest.md)| The request body for the &#x60;updateShipmentStatus&#x60; operation. | 
 **order_id** | **String**| An Amazon-defined order identifier, in 3-7-7 format. | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



