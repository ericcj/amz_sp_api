# AmzSpApi::VendorOrdersApiModel::VendorOrdersApi

All URIs are relative to *https://sellingpartnerapi-na.amazon.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_purchase_order**](VendorOrdersApi.md#get_purchase_order) | **GET** /vendor/orders/v1/purchaseOrders/{purchaseOrderNumber} | 
[**get_purchase_orders**](VendorOrdersApi.md#get_purchase_orders) | **GET** /vendor/orders/v1/purchaseOrders | 
[**get_purchase_orders_status**](VendorOrdersApi.md#get_purchase_orders_status) | **GET** /vendor/orders/v1/purchaseOrdersStatus | 
[**submit_acknowledgement**](VendorOrdersApi.md#submit_acknowledgement) | **POST** /vendor/orders/v1/acknowledgements | 

# **get_purchase_order**
> GetPurchaseOrderResponse get_purchase_order(purchase_order_number)



Returns a purchase order based on the purchaseOrderNumber value that you specify.  **Usage Plans:**  | Plan type | Rate (requests per second) | Burst | | ---- | ---- | ---- | |Default| 10 | 10 | |Selling partner specific| Variable | Variable |  The x-amzn-RateLimit-Limit response header returns the usage plan rate limits that were applied to the requested operation. Rate limits for some selling partners will vary from the default rate and burst shown in the table above. For more information, see \"Usage Plans and Rate Limits\" in the Selling Partner API documentation.

### Example
```ruby
# load the gem
require 'vendor-orders-api-model'

api_instance = AmzSpApi::VendorOrdersApiModel::VendorOrdersApi.new
purchase_order_number = 'purchase_order_number_example' # String | The purchase order identifier for the order that you want. Formatting Notes: 8-character alpha-numeric code.


begin
  result = api_instance.get_purchase_order(purchase_order_number)
  p result
rescue AmzSpApi::VendorOrdersApiModel::ApiError => e
  puts "Exception when calling VendorOrdersApi->get_purchase_order: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **purchase_order_number** | **String**| The purchase order identifier for the order that you want. Formatting Notes: 8-character alpha-numeric code. | 

### Return type

[**GetPurchaseOrderResponse**](GetPurchaseOrderResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_purchase_orders**
> GetPurchaseOrdersResponse get_purchase_orders(opts)



Returns a list of purchase orders created or changed during the time frame that you specify. You define the time frame using the createdAfter, createdBefore, changedAfter and changedBefore parameters. The date range to search must not be more than 7 days. You can choose to get only the purchase order numbers by setting includeDetails to false. You can then use the getPurchaseOrder operation to receive details for a specific purchase order.  **Usage Plans:**  | Plan type | Rate (requests per second) | Burst | | ---- | ---- | ---- | |Default| 10 | 10 | |Selling partner specific| Variable | Variable |  The x-amzn-RateLimit-Limit response header returns the usage plan rate limits that were applied to the requested operation. Rate limits for some selling partners will vary from the default rate and burst shown in the table above. For more information, see \"Usage Plans and Rate Limits\" in the Selling Partner API documentation.

### Example
```ruby
# load the gem
require 'vendor-orders-api-model'

api_instance = AmzSpApi::VendorOrdersApiModel::VendorOrdersApi.new
opts = { 
  limit: 789, # Integer | The limit to the number of records returned. Default value is 100 records.
  created_after: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | Purchase orders that became available after this time will be included in the result. Must be in ISO-8601 date/time format.
  created_before: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | Purchase orders that became available before this time will be included in the result. Must be in ISO-8601 date/time format.
  sort_order: 'sort_order_example', # String | Sort in ascending or descending order by purchase order creation date.
  next_token: 'next_token_example', # String | Used for pagination when there is more purchase orders than the specified result size limit. The token value is returned in the previous API call
  include_details: 'include_details_example', # String | When true, returns purchase orders with complete details. Otherwise, only purchase order numbers are returned. Default value is true.
  changed_after: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | Purchase orders that changed after this timestamp will be included in the result. Must be in ISO-8601 date/time format.
  changed_before: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | Purchase orders that changed before this timestamp will be included in the result. Must be in ISO-8601 date/time format.
  po_item_state: 'po_item_state_example', # String | Current state of the purchase order item. If this value is Cancelled, this API will return purchase orders which have one or more items cancelled by Amazon with updated item quantity as zero.
  is_po_changed: 'is_po_changed_example', # String | When true, returns purchase orders which were modified after the order was placed. Vendors are required to pull the changed purchase order and fulfill the updated purchase order and not the original one. Default value is false.
  purchase_order_state: 'purchase_order_state_example', # String | Filters purchase orders based on the purchase order state.
  ordering_vendor_code: 'ordering_vendor_code_example' # String | Filters purchase orders based on the specified ordering vendor code. This value should be same as 'sellingParty.partyId' in the purchase order. If not included in the filter, all purchase orders for all of the vendor codes that exist in the vendor group used to authorize the API client application are returned.
}

begin
  result = api_instance.get_purchase_orders(opts)
  p result
rescue AmzSpApi::VendorOrdersApiModel::ApiError => e
  puts "Exception when calling VendorOrdersApi->get_purchase_orders: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **Integer**| The limit to the number of records returned. Default value is 100 records. | [optional] 
 **created_after** | **DateTime**| Purchase orders that became available after this time will be included in the result. Must be in ISO-8601 date/time format. | [optional] 
 **created_before** | **DateTime**| Purchase orders that became available before this time will be included in the result. Must be in ISO-8601 date/time format. | [optional] 
 **sort_order** | **String**| Sort in ascending or descending order by purchase order creation date. | [optional] 
 **next_token** | **String**| Used for pagination when there is more purchase orders than the specified result size limit. The token value is returned in the previous API call | [optional] 
 **include_details** | **String**| When true, returns purchase orders with complete details. Otherwise, only purchase order numbers are returned. Default value is true. | [optional] 
 **changed_after** | **DateTime**| Purchase orders that changed after this timestamp will be included in the result. Must be in ISO-8601 date/time format. | [optional] 
 **changed_before** | **DateTime**| Purchase orders that changed before this timestamp will be included in the result. Must be in ISO-8601 date/time format. | [optional] 
 **po_item_state** | **String**| Current state of the purchase order item. If this value is Cancelled, this API will return purchase orders which have one or more items cancelled by Amazon with updated item quantity as zero. | [optional] 
 **is_po_changed** | **String**| When true, returns purchase orders which were modified after the order was placed. Vendors are required to pull the changed purchase order and fulfill the updated purchase order and not the original one. Default value is false. | [optional] 
 **purchase_order_state** | **String**| Filters purchase orders based on the purchase order state. | [optional] 
 **ordering_vendor_code** | **String**| Filters purchase orders based on the specified ordering vendor code. This value should be same as &#x27;sellingParty.partyId&#x27; in the purchase order. If not included in the filter, all purchase orders for all of the vendor codes that exist in the vendor group used to authorize the API client application are returned. | [optional] 

### Return type

[**GetPurchaseOrdersResponse**](GetPurchaseOrdersResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, payload



# **get_purchase_orders_status**
> GetPurchaseOrdersStatusResponse get_purchase_orders_status(opts)



Returns purchase order statuses based on the filters that you specify. Date range to search must not be more than 7 days. You can return a list of purchase order statuses using the available filters, or a single purchase order status by providing the purchase order number.  **Usage Plans:**  | Plan type | Rate (requests per second) | Burst | | ---- | ---- | ---- | |Default| 10 | 10 | |Selling partner specific| Variable | Variable |  The x-amzn-RateLimit-Limit response header returns the usage plan rate limits that were applied to the requested operation. Rate limits for some selling partners will vary from the default rate and burst shown in the table above. For more information, see \"Usage Plans and Rate Limits\" in the Selling Partner API documentation.

### Example
```ruby
# load the gem
require 'vendor-orders-api-model'

api_instance = AmzSpApi::VendorOrdersApiModel::VendorOrdersApi.new
opts = { 
  limit: 789, # Integer | The limit to the number of records returned. Default value is 100 records.
  sort_order: 'sort_order_example', # String | Sort in ascending or descending order by purchase order creation date.
  next_token: 'next_token_example', # String | Used for pagination when there are more purchase orders than the specified result size limit.
  created_after: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | Purchase orders that became available after this timestamp will be included in the result. Must be in ISO-8601 date/time format.
  created_before: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | Purchase orders that became available before this timestamp will be included in the result. Must be in ISO-8601 date/time format.
  updated_after: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | Purchase orders for which the last purchase order update happened after this timestamp will be included in the result. Must be in ISO-8601 date/time format.
  updated_before: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | Purchase orders for which the last purchase order update happened before this timestamp will be included in the result. Must be in ISO-8601 date/time format.
  purchase_order_number: 'purchase_order_number_example', # String | Provides purchase order status for the specified purchase order number.
  purchase_order_status: 'purchase_order_status_example', # String | Filters purchase orders based on the specified purchase order status. If not included in filter, this will return purchase orders for all statuses.
  item_confirmation_status: 'item_confirmation_status_example', # String | Filters purchase orders based on their item confirmation status. If the item confirmation status is not included in the filter, purchase orders for all confirmation statuses are included.
  item_receive_status: 'item_receive_status_example', # String | Filters purchase orders based on the purchase order's item receive status. If the item receive status is not included in the filter, purchase orders for all receive statuses are included.
  ordering_vendor_code: 'ordering_vendor_code_example', # String | Filters purchase orders based on the specified ordering vendor code. This value should be same as 'sellingParty.partyId' in the purchase order. If not included in filter, all purchase orders for all the vendor codes that exist in the vendor group used to authorize API client application are returned.
  ship_to_party_id: 'ship_to_party_id_example' # String | Filters purchase orders for a specific buyer's Fulfillment Center/warehouse by providing ship to location id here. This value should be same as 'shipToParty.partyId' in the purchase order. If not included in filter, this will return purchase orders for all the buyer's warehouses used for vendor group purchase orders.
}

begin
  result = api_instance.get_purchase_orders_status(opts)
  p result
rescue AmzSpApi::VendorOrdersApiModel::ApiError => e
  puts "Exception when calling VendorOrdersApi->get_purchase_orders_status: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **Integer**| The limit to the number of records returned. Default value is 100 records. | [optional] 
 **sort_order** | **String**| Sort in ascending or descending order by purchase order creation date. | [optional] 
 **next_token** | **String**| Used for pagination when there are more purchase orders than the specified result size limit. | [optional] 
 **created_after** | **DateTime**| Purchase orders that became available after this timestamp will be included in the result. Must be in ISO-8601 date/time format. | [optional] 
 **created_before** | **DateTime**| Purchase orders that became available before this timestamp will be included in the result. Must be in ISO-8601 date/time format. | [optional] 
 **updated_after** | **DateTime**| Purchase orders for which the last purchase order update happened after this timestamp will be included in the result. Must be in ISO-8601 date/time format. | [optional] 
 **updated_before** | **DateTime**| Purchase orders for which the last purchase order update happened before this timestamp will be included in the result. Must be in ISO-8601 date/time format. | [optional] 
 **purchase_order_number** | **String**| Provides purchase order status for the specified purchase order number. | [optional] 
 **purchase_order_status** | **String**| Filters purchase orders based on the specified purchase order status. If not included in filter, this will return purchase orders for all statuses. | [optional] 
 **item_confirmation_status** | **String**| Filters purchase orders based on their item confirmation status. If the item confirmation status is not included in the filter, purchase orders for all confirmation statuses are included. | [optional] 
 **item_receive_status** | **String**| Filters purchase orders based on the purchase order&#x27;s item receive status. If the item receive status is not included in the filter, purchase orders for all receive statuses are included. | [optional] 
 **ordering_vendor_code** | **String**| Filters purchase orders based on the specified ordering vendor code. This value should be same as &#x27;sellingParty.partyId&#x27; in the purchase order. If not included in filter, all purchase orders for all the vendor codes that exist in the vendor group used to authorize API client application are returned. | [optional] 
 **ship_to_party_id** | **String**| Filters purchase orders for a specific buyer&#x27;s Fulfillment Center/warehouse by providing ship to location id here. This value should be same as &#x27;shipToParty.partyId&#x27; in the purchase order. If not included in filter, this will return purchase orders for all the buyer&#x27;s warehouses used for vendor group purchase orders. | [optional] 

### Return type

[**GetPurchaseOrdersStatusResponse**](GetPurchaseOrdersStatusResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **submit_acknowledgement**
> SubmitAcknowledgementResponse submit_acknowledgement(body)



Submits acknowledgements for one or more purchase orders.  **Usage Plans:**  | Plan type | Rate (requests per second) | Burst | | ---- | ---- | ---- | |Default| 10 | 10 | |Selling partner specific| Variable | Variable |  The x-amzn-RateLimit-Limit response header returns the usage plan rate limits that were applied to the requested operation. Rate limits for some selling partners will vary from the default rate and burst shown in the table above. For more information, see \"Usage Plans and Rate Limits\" in the Selling Partner API documentation.

### Example
```ruby
# load the gem
require 'vendor-orders-api-model'

api_instance = AmzSpApi::VendorOrdersApiModel::VendorOrdersApi.new
body = AmzSpApi::VendorOrdersApiModel::SubmitAcknowledgementRequest.new # SubmitAcknowledgementRequest | 


begin
  result = api_instance.submit_acknowledgement(body)
  p result
rescue AmzSpApi::VendorOrdersApiModel::ApiError => e
  puts "Exception when calling VendorOrdersApi->submit_acknowledgement: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SubmitAcknowledgementRequest**](SubmitAcknowledgementRequest.md)|  | 

### Return type

[**SubmitAcknowledgementResponse**](SubmitAcknowledgementResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



