# AmzSpApi::VendorShipmentsApiModel::VendorShippingApi

All URIs are relative to *https://sellingpartnerapi-na.amazon.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_shipment_details**](VendorShippingApi.md#get_shipment_details) | **GET** /vendor/shipping/v1/shipments | GetShipmentDetails
[**get_shipment_labels**](VendorShippingApi.md#get_shipment_labels) | **GET** /vendor/shipping/v1/transportLabels | 
[**submit_shipment_confirmations**](VendorShippingApi.md#submit_shipment_confirmations) | **POST** /vendor/shipping/v1/shipmentConfirmations | SubmitShipmentConfirmations
[**submit_shipments**](VendorShippingApi.md#submit_shipments) | **POST** /vendor/shipping/v1/shipments | SubmitShipments

# **get_shipment_details**
> GetShipmentDetailsResponse get_shipment_details(opts)

GetShipmentDetails

Returns the Details about Shipment, Carrier Details,  status of the shipment, container details and other details related to shipment based on the filter parameters value that you specify.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 10 | 10 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values than those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'vendor-shipments-api-model'

api_instance = AmzSpApi::VendorShipmentsApiModel::VendorShippingApi.new
opts = { 
  limit: 789, # Integer | The limit to the number of records returned. Default value is 50 records.
  sort_order: 'sort_order_example', # String | Sort in ascending or descending order by purchase order creation date.
  next_token: 'next_token_example', # String | Used for pagination when there are more shipments than the specified result size limit.
  created_after: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | Get Shipment Details that became available after this timestamp will be included in the result. Must be in <a href='https://developer-docs.amazon.com/sp-api/docs/iso-8601'>ISO 8601</a> format.
  created_before: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | Get Shipment Details that became available before this timestamp will be included in the result. Must be in <a href='https://developer-docs.amazon.com/sp-api/docs/iso-8601'>ISO 8601</a> format.
  shipment_confirmed_before: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | Get Shipment Details by passing Shipment confirmed create Date Before. Must be in <a href='https://developer-docs.amazon.com/sp-api/docs/iso-8601'>ISO 8601</a> format.
  shipment_confirmed_after: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | Get Shipment Details by passing Shipment confirmed create Date After. Must be in <a href='https://developer-docs.amazon.com/sp-api/docs/iso-8601'>ISO 8601</a> format.
  package_label_created_before: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | Get Shipment Details by passing Package label create Date by buyer. Must be in <a href='https://developer-docs.amazon.com/sp-api/docs/iso-8601'>ISO 8601</a> format.
  package_label_created_after: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | Get Shipment Details by passing Package label create Date After by buyer. Must be in <a href='https://developer-docs.amazon.com/sp-api/docs/iso-8601'>ISO 8601</a> format.
  shipped_before: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | Get Shipment Details by passing Shipped Date Before. Must be in <a href='https://developer-docs.amazon.com/sp-api/docs/iso-8601'>ISO 8601</a> format.
  shipped_after: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | Get Shipment Details by passing Shipped Date After. Must be in <a href='https://developer-docs.amazon.com/sp-api/docs/iso-8601'>ISO 8601</a> format.
  estimated_delivery_before: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | Get Shipment Details by passing Estimated Delivery Date Before. Must be in <a href='https://developer-docs.amazon.com/sp-api/docs/iso-8601'>ISO 8601</a> format.
  estimated_delivery_after: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | Get Shipment Details by passing Estimated Delivery Date After. Must be in <a href='https://developer-docs.amazon.com/sp-api/docs/iso-8601'>ISO 8601</a> format.
  shipment_delivery_before: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | Get Shipment Details by passing Shipment Delivery Date Before. Must be in <a href='https://developer-docs.amazon.com/sp-api/docs/iso-8601'>ISO 8601</a> format.
  shipment_delivery_after: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | Get Shipment Details by passing Shipment Delivery Date After. Must be in <a href='https://developer-docs.amazon.com/sp-api/docs/iso-8601'>ISO 8601</a> format.
  requested_pick_up_before: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | Get Shipment Details by passing Before Requested pickup date. Must be in <a href='https://developer-docs.amazon.com/sp-api/docs/iso-8601'>ISO 8601</a> format.
  requested_pick_up_after: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | Get Shipment Details by passing After Requested pickup date. Must be in <a href='https://developer-docs.amazon.com/sp-api/docs/iso-8601'>ISO 8601</a> format.
  scheduled_pick_up_before: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | Get Shipment Details by passing Before scheduled pickup date. Must be in <a href='https://developer-docs.amazon.com/sp-api/docs/iso-8601'>ISO 8601</a> format.
  scheduled_pick_up_after: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | Get Shipment Details by passing After Scheduled pickup date. Must be in <a href='https://developer-docs.amazon.com/sp-api/docs/iso-8601'>ISO 8601</a> format.
  current_shipment_status: 'current_shipment_status_example', # String | Get Shipment Details by passing Current shipment status.
  vendor_shipment_identifier: 'vendor_shipment_identifier_example', # String | Get Shipment Details by passing Vendor Shipment ID
  buyer_reference_number: 'buyer_reference_number_example', # String | Get Shipment Details by passing buyer Reference ID
  buyer_warehouse_code: 'buyer_warehouse_code_example', # String | Get Shipping Details based on buyer warehouse code. This value should be same as 'shipToParty.partyId' in the Shipment.
  seller_warehouse_code: 'seller_warehouse_code_example' # String | Get Shipping Details based on vendor warehouse code. This value should be same as 'sellingParty.partyId' in the Shipment.
}

begin
  #GetShipmentDetails
  result = api_instance.get_shipment_details(opts)
  p result
rescue AmzSpApi::VendorShipmentsApiModel::ApiError => e
  puts "Exception when calling VendorShippingApi->get_shipment_details: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **Integer**| The limit to the number of records returned. Default value is 50 records. | [optional] 
 **sort_order** | **String**| Sort in ascending or descending order by purchase order creation date. | [optional] 
 **next_token** | **String**| Used for pagination when there are more shipments than the specified result size limit. | [optional] 
 **created_after** | **DateTime**| Get Shipment Details that became available after this timestamp will be included in the result. Must be in &lt;a href&#x3D;&#x27;https://developer-docs.amazon.com/sp-api/docs/iso-8601&#x27;&gt;ISO 8601&lt;/a&gt; format. | [optional] 
 **created_before** | **DateTime**| Get Shipment Details that became available before this timestamp will be included in the result. Must be in &lt;a href&#x3D;&#x27;https://developer-docs.amazon.com/sp-api/docs/iso-8601&#x27;&gt;ISO 8601&lt;/a&gt; format. | [optional] 
 **shipment_confirmed_before** | **DateTime**| Get Shipment Details by passing Shipment confirmed create Date Before. Must be in &lt;a href&#x3D;&#x27;https://developer-docs.amazon.com/sp-api/docs/iso-8601&#x27;&gt;ISO 8601&lt;/a&gt; format. | [optional] 
 **shipment_confirmed_after** | **DateTime**| Get Shipment Details by passing Shipment confirmed create Date After. Must be in &lt;a href&#x3D;&#x27;https://developer-docs.amazon.com/sp-api/docs/iso-8601&#x27;&gt;ISO 8601&lt;/a&gt; format. | [optional] 
 **package_label_created_before** | **DateTime**| Get Shipment Details by passing Package label create Date by buyer. Must be in &lt;a href&#x3D;&#x27;https://developer-docs.amazon.com/sp-api/docs/iso-8601&#x27;&gt;ISO 8601&lt;/a&gt; format. | [optional] 
 **package_label_created_after** | **DateTime**| Get Shipment Details by passing Package label create Date After by buyer. Must be in &lt;a href&#x3D;&#x27;https://developer-docs.amazon.com/sp-api/docs/iso-8601&#x27;&gt;ISO 8601&lt;/a&gt; format. | [optional] 
 **shipped_before** | **DateTime**| Get Shipment Details by passing Shipped Date Before. Must be in &lt;a href&#x3D;&#x27;https://developer-docs.amazon.com/sp-api/docs/iso-8601&#x27;&gt;ISO 8601&lt;/a&gt; format. | [optional] 
 **shipped_after** | **DateTime**| Get Shipment Details by passing Shipped Date After. Must be in &lt;a href&#x3D;&#x27;https://developer-docs.amazon.com/sp-api/docs/iso-8601&#x27;&gt;ISO 8601&lt;/a&gt; format. | [optional] 
 **estimated_delivery_before** | **DateTime**| Get Shipment Details by passing Estimated Delivery Date Before. Must be in &lt;a href&#x3D;&#x27;https://developer-docs.amazon.com/sp-api/docs/iso-8601&#x27;&gt;ISO 8601&lt;/a&gt; format. | [optional] 
 **estimated_delivery_after** | **DateTime**| Get Shipment Details by passing Estimated Delivery Date After. Must be in &lt;a href&#x3D;&#x27;https://developer-docs.amazon.com/sp-api/docs/iso-8601&#x27;&gt;ISO 8601&lt;/a&gt; format. | [optional] 
 **shipment_delivery_before** | **DateTime**| Get Shipment Details by passing Shipment Delivery Date Before. Must be in &lt;a href&#x3D;&#x27;https://developer-docs.amazon.com/sp-api/docs/iso-8601&#x27;&gt;ISO 8601&lt;/a&gt; format. | [optional] 
 **shipment_delivery_after** | **DateTime**| Get Shipment Details by passing Shipment Delivery Date After. Must be in &lt;a href&#x3D;&#x27;https://developer-docs.amazon.com/sp-api/docs/iso-8601&#x27;&gt;ISO 8601&lt;/a&gt; format. | [optional] 
 **requested_pick_up_before** | **DateTime**| Get Shipment Details by passing Before Requested pickup date. Must be in &lt;a href&#x3D;&#x27;https://developer-docs.amazon.com/sp-api/docs/iso-8601&#x27;&gt;ISO 8601&lt;/a&gt; format. | [optional] 
 **requested_pick_up_after** | **DateTime**| Get Shipment Details by passing After Requested pickup date. Must be in &lt;a href&#x3D;&#x27;https://developer-docs.amazon.com/sp-api/docs/iso-8601&#x27;&gt;ISO 8601&lt;/a&gt; format. | [optional] 
 **scheduled_pick_up_before** | **DateTime**| Get Shipment Details by passing Before scheduled pickup date. Must be in &lt;a href&#x3D;&#x27;https://developer-docs.amazon.com/sp-api/docs/iso-8601&#x27;&gt;ISO 8601&lt;/a&gt; format. | [optional] 
 **scheduled_pick_up_after** | **DateTime**| Get Shipment Details by passing After Scheduled pickup date. Must be in &lt;a href&#x3D;&#x27;https://developer-docs.amazon.com/sp-api/docs/iso-8601&#x27;&gt;ISO 8601&lt;/a&gt; format. | [optional] 
 **current_shipment_status** | **String**| Get Shipment Details by passing Current shipment status. | [optional] 
 **vendor_shipment_identifier** | **String**| Get Shipment Details by passing Vendor Shipment ID | [optional] 
 **buyer_reference_number** | **String**| Get Shipment Details by passing buyer Reference ID | [optional] 
 **buyer_warehouse_code** | **String**| Get Shipping Details based on buyer warehouse code. This value should be same as &#x27;shipToParty.partyId&#x27; in the Shipment. | [optional] 
 **seller_warehouse_code** | **String**| Get Shipping Details based on vendor warehouse code. This value should be same as &#x27;sellingParty.partyId&#x27; in the Shipment. | [optional] 

### Return type

[**GetShipmentDetailsResponse**](GetShipmentDetailsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_shipment_labels**
> GetShipmentLabels get_shipment_labels(opts)



Returns small parcel shipment labels based on the filters that you specify.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 10 | 10 |  The `x-amzn-RateLimit-Limit` response header contains the usage plan rate limits for the operation, when available. The preceding table contains the default rate and burst values for this operation. Selling partners whose business demands require higher throughput might have higher rate and burst values than those shown here. For more information, refer to [Usage Plans and Rate Limits](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'vendor-shipments-api-model'

api_instance = AmzSpApi::VendorShipmentsApiModel::VendorShippingApi.new
opts = { 
  limit: 789, # Integer | The limit to the number of records returned. Default value is 50 records.
  sort_order: 'sort_order_example', # String | Sort the list by shipment label creation date in ascending or descending order.
  next_token: 'next_token_example', # String | A token that you use to retrieve the next page of results. The response includes `nextToken` when the number of results exceeds the specified `pageSize` value. To get the next page of results, call the operation with this token and include the same arguments as the call that produced the token. To get a complete list, call this operation until `nextToken` is null. Note that this operation can return empty pages.
  label_created_after: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | Shipment labels created after this time will be included in the result. This field must be in [ISO 8601](https://developer-docs.amazon.com/sp-api/docs/iso-8601) datetime format.
  label_created_before: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | Shipment labels created before this time will be included in the result. This field must be in [ISO 8601](https://developer-docs.amazon.com/sp-api/docs/iso-8601) datetime format.
  buyer_reference_number: 'buyer_reference_number_example', # String | Get Shipment labels by passing buyer reference number.
  vendor_shipment_identifier: 'vendor_shipment_identifier_example', # String | Get Shipment labels by passing vendor shipment identifier.
  seller_warehouse_code: 'seller_warehouse_code_example' # String | Get Shipping labels based on vendor warehouse code. This value must be same as the `sellingParty.partyId` in the shipment.
}

begin
  result = api_instance.get_shipment_labels(opts)
  p result
rescue AmzSpApi::VendorShipmentsApiModel::ApiError => e
  puts "Exception when calling VendorShippingApi->get_shipment_labels: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **Integer**| The limit to the number of records returned. Default value is 50 records. | [optional] 
 **sort_order** | **String**| Sort the list by shipment label creation date in ascending or descending order. | [optional] 
 **next_token** | **String**| A token that you use to retrieve the next page of results. The response includes &#x60;nextToken&#x60; when the number of results exceeds the specified &#x60;pageSize&#x60; value. To get the next page of results, call the operation with this token and include the same arguments as the call that produced the token. To get a complete list, call this operation until &#x60;nextToken&#x60; is null. Note that this operation can return empty pages. | [optional] 
 **label_created_after** | **DateTime**| Shipment labels created after this time will be included in the result. This field must be in [ISO 8601](https://developer-docs.amazon.com/sp-api/docs/iso-8601) datetime format. | [optional] 
 **label_created_before** | **DateTime**| Shipment labels created before this time will be included in the result. This field must be in [ISO 8601](https://developer-docs.amazon.com/sp-api/docs/iso-8601) datetime format. | [optional] 
 **buyer_reference_number** | **String**| Get Shipment labels by passing buyer reference number. | [optional] 
 **vendor_shipment_identifier** | **String**| Get Shipment labels by passing vendor shipment identifier. | [optional] 
 **seller_warehouse_code** | **String**| Get Shipping labels based on vendor warehouse code. This value must be same as the &#x60;sellingParty.partyId&#x60; in the shipment. | [optional] 

### Return type

[**GetShipmentLabels**](GetShipmentLabels.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **submit_shipment_confirmations**
> SubmitShipmentConfirmationsResponse submit_shipment_confirmations(body)

SubmitShipmentConfirmations

Submits one or more shipment confirmations for vendor orders.  **Usage Plan:**  | Rate (requests per second) | Burst | | --- | --- | | 10 | 10 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values than those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'vendor-shipments-api-model'

api_instance = AmzSpApi::VendorShipmentsApiModel::VendorShippingApi.new
body = AmzSpApi::VendorShipmentsApiModel::SubmitShipmentConfirmationsRequest.new # SubmitShipmentConfirmationsRequest | A request to submit shipment confirmation.


begin
  #SubmitShipmentConfirmations
  result = api_instance.submit_shipment_confirmations(body)
  p result
rescue AmzSpApi::VendorShipmentsApiModel::ApiError => e
  puts "Exception when calling VendorShippingApi->submit_shipment_confirmations: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SubmitShipmentConfirmationsRequest**](SubmitShipmentConfirmationsRequest.md)| A request to submit shipment confirmation. | 

### Return type

[**SubmitShipmentConfirmationsResponse**](SubmitShipmentConfirmationsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **submit_shipments**
> SubmitShipmentConfirmationsResponse submit_shipments(body)

SubmitShipments

Submits one or more shipment request for vendor Orders.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 10 | 10 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values than those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'vendor-shipments-api-model'

api_instance = AmzSpApi::VendorShipmentsApiModel::VendorShippingApi.new
body = AmzSpApi::VendorShipmentsApiModel::SubmitShipments.new # SubmitShipments | A request to submit shipment request.


begin
  #SubmitShipments
  result = api_instance.submit_shipments(body)
  p result
rescue AmzSpApi::VendorShipmentsApiModel::ApiError => e
  puts "Exception when calling VendorShippingApi->submit_shipments: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SubmitShipments**](SubmitShipments.md)| A request to submit shipment request. | 

### Return type

[**SubmitShipmentConfirmationsResponse**](SubmitShipmentConfirmationsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



