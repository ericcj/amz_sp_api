# AmzSpApi::VendorDirectFulfillmentShippingApiModel::VendorShippingApi

All URIs are relative to *https://sellingpartnerapi-na.amazon.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_packing_slip**](VendorShippingApi.md#get_packing_slip) | **GET** /vendor/directFulfillment/shipping/v1/packingSlips/{purchaseOrderNumber} | 
[**get_packing_slips**](VendorShippingApi.md#get_packing_slips) | **GET** /vendor/directFulfillment/shipping/v1/packingSlips | 
[**submit_shipment_confirmations**](VendorShippingApi.md#submit_shipment_confirmations) | **POST** /vendor/directFulfillment/shipping/v1/shipmentConfirmations | 
[**submit_shipment_status_updates**](VendorShippingApi.md#submit_shipment_status_updates) | **POST** /vendor/directFulfillment/shipping/v1/shipmentStatusUpdates | 

# **get_packing_slip**
> GetPackingSlipResponse get_packing_slip(purchase_order_number)



Returns a packing slip based on the purchaseOrderNumber that you specify.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 10 | 10 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values than those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'vendor-direct-fulfillment-shipping-api-model'

api_instance = AmzSpApi::VendorDirectFulfillmentShippingApiModel::VendorShippingApi.new
purchase_order_number = 'purchase_order_number_example' # String | The purchaseOrderNumber for the packing slip you want.


begin
  result = api_instance.get_packing_slip(purchase_order_number)
  p result
rescue AmzSpApi::VendorDirectFulfillmentShippingApiModel::ApiError => e
  puts "Exception when calling VendorShippingApi->get_packing_slip: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **purchase_order_number** | **String**| The purchaseOrderNumber for the packing slip you want. | 

### Return type

[**GetPackingSlipResponse**](GetPackingSlipResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_packing_slips**
> GetPackingSlipListResponse get_packing_slips(created_after, created_before, opts)



Returns a list of packing slips for the purchase orders that match the criteria specified. Date range to search must not be more than 7 days.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 10 | 10 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values than those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'vendor-direct-fulfillment-shipping-api-model'

api_instance = AmzSpApi::VendorDirectFulfillmentShippingApiModel::VendorShippingApi.new
created_after = DateTime.parse('2013-10-20T19:20:30+01:00') # DateTime | Packing slips that became available after this date and time will be included in the result. Must be in ISO-8601 date/time format.
created_before = DateTime.parse('2013-10-20T19:20:30+01:00') # DateTime | Packing slips that became available before this date and time will be included in the result. Must be in ISO-8601 date/time format.
opts = { 
  ship_from_party_id: 'ship_from_party_id_example', # String | The vendor warehouseId for order fulfillment. If not specified the result will contain orders for all warehouses.
  limit: 56, # Integer | The limit to the number of records returned
  sort_order: 'ASC', # String | Sort ASC or DESC by packing slip creation date.
  next_token: 'next_token_example' # String | Used for pagination when there are more packing slips than the specified result size limit. The token value is returned in the previous API call.
}

begin
  result = api_instance.get_packing_slips(created_after, created_before, opts)
  p result
rescue AmzSpApi::VendorDirectFulfillmentShippingApiModel::ApiError => e
  puts "Exception when calling VendorShippingApi->get_packing_slips: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **created_after** | **DateTime**| Packing slips that became available after this date and time will be included in the result. Must be in ISO-8601 date/time format. | 
 **created_before** | **DateTime**| Packing slips that became available before this date and time will be included in the result. Must be in ISO-8601 date/time format. | 
 **ship_from_party_id** | **String**| The vendor warehouseId for order fulfillment. If not specified the result will contain orders for all warehouses. | [optional] 
 **limit** | **Integer**| The limit to the number of records returned | [optional] 
 **sort_order** | **String**| Sort ASC or DESC by packing slip creation date. | [optional] [default to ASC]
 **next_token** | **String**| Used for pagination when there are more packing slips than the specified result size limit. The token value is returned in the previous API call. | [optional] 

### Return type

[**GetPackingSlipListResponse**](GetPackingSlipListResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **submit_shipment_confirmations**
> SubmitShipmentConfirmationsResponse submit_shipment_confirmations(body)



Submits one or more shipment confirmations for vendor orders.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 10 | 10 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values than those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'vendor-direct-fulfillment-shipping-api-model'

api_instance = AmzSpApi::VendorDirectFulfillmentShippingApiModel::VendorShippingApi.new
body = AmzSpApi::VendorDirectFulfillmentShippingApiModel::SubmitShipmentConfirmationsRequest.new # SubmitShipmentConfirmationsRequest | Request body containing the shipment confirmations data.


begin
  result = api_instance.submit_shipment_confirmations(body)
  p result
rescue AmzSpApi::VendorDirectFulfillmentShippingApiModel::ApiError => e
  puts "Exception when calling VendorShippingApi->submit_shipment_confirmations: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SubmitShipmentConfirmationsRequest**](SubmitShipmentConfirmationsRequest.md)| Request body containing the shipment confirmations data. | 

### Return type

[**SubmitShipmentConfirmationsResponse**](SubmitShipmentConfirmationsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **submit_shipment_status_updates**
> SubmitShipmentStatusUpdatesResponse submit_shipment_status_updates(body)



This API call is only to be used by Vendor-Own-Carrier (VOC) vendors. Calling this API will submit a shipment status update for the package that a vendor has shipped. It will provide the Amazon customer visibility on their order, when the package is outside of Amazon Network visibility.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 10 | 10 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values than those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'vendor-direct-fulfillment-shipping-api-model'

api_instance = AmzSpApi::VendorDirectFulfillmentShippingApiModel::VendorShippingApi.new
body = AmzSpApi::VendorDirectFulfillmentShippingApiModel::SubmitShipmentStatusUpdatesRequest.new # SubmitShipmentStatusUpdatesRequest | Request body containing the shipment status update data.


begin
  result = api_instance.submit_shipment_status_updates(body)
  p result
rescue AmzSpApi::VendorDirectFulfillmentShippingApiModel::ApiError => e
  puts "Exception when calling VendorShippingApi->submit_shipment_status_updates: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SubmitShipmentStatusUpdatesRequest**](SubmitShipmentStatusUpdatesRequest.md)| Request body containing the shipment status update data. | 

### Return type

[**SubmitShipmentStatusUpdatesResponse**](SubmitShipmentStatusUpdatesResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



