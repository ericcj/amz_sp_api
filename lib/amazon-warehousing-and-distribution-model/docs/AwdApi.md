# AmzSpApi::AmazonWarehousingAndDistributionModel::AwdApi

All URIs are relative to *https://sellingpartnerapi-na.amazon.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cancel_inbound**](AwdApi.md#cancel_inbound) | **POST** /awd/2024-05-09/inboundOrders/{orderId}/cancellation | 
[**check_inbound_eligibility**](AwdApi.md#check_inbound_eligibility) | **POST** /awd/2024-05-09/inboundEligibility | 
[**confirm_inbound**](AwdApi.md#confirm_inbound) | **POST** /awd/2024-05-09/inboundOrders/{orderId}/confirmation | 
[**create_inbound**](AwdApi.md#create_inbound) | **POST** /awd/2024-05-09/inboundOrders | 
[**get_inbound**](AwdApi.md#get_inbound) | **GET** /awd/2024-05-09/inboundOrders/{orderId} | 
[**get_inbound_shipment**](AwdApi.md#get_inbound_shipment) | **GET** /awd/2024-05-09/inboundShipments/{shipmentId} | 
[**get_inbound_shipment_labels**](AwdApi.md#get_inbound_shipment_labels) | **GET** /awd/2024-05-09/inboundShipments/{shipmentId}/labels | 
[**list_inbound_shipments**](AwdApi.md#list_inbound_shipments) | **GET** /awd/2024-05-09/inboundShipments | 
[**list_inventory**](AwdApi.md#list_inventory) | **GET** /awd/2024-05-09/inventory | 
[**update_inbound**](AwdApi.md#update_inbound) | **PUT** /awd/2024-05-09/inboundOrders/{orderId} | 
[**update_inbound_shipment_transport_details**](AwdApi.md#update_inbound_shipment_transport_details) | **PUT** /awd/2024-05-09/inboundShipments/{shipmentId}/transport | 

# **cancel_inbound**
> cancel_inbound(order_id)



Cancels an AWD Inbound order and its associated shipment.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 1 | 1 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The preceding table indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may have higher rate and burst values than those shown here. For more information, refer to [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'amazon-warehousing-and-distribution-model'

api_instance = AmzSpApi::AmazonWarehousingAndDistributionModel::AwdApi.new
order_id = 'order_id_example' # String | The ID of the inbound order you want to cancel.


begin
  api_instance.cancel_inbound(order_id)
rescue AmzSpApi::AmazonWarehousingAndDistributionModel::ApiError => e
  puts "Exception when calling AwdApi->cancel_inbound: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **order_id** | **String**| The ID of the inbound order you want to cancel. | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **check_inbound_eligibility**
> InboundEligibility check_inbound_eligibility(body)



Determines if the packages you specify are eligible for an AWD inbound order and contains error details for ineligible packages.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 1 | 1 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The preceding table indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may have higher rate and burst values than those shown here. For more information, refer to [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'amazon-warehousing-and-distribution-model'

api_instance = AmzSpApi::AmazonWarehousingAndDistributionModel::AwdApi.new
body = AmzSpApi::AmazonWarehousingAndDistributionModel::InboundPackages.new # InboundPackages | Represents the packages you want to inbound.


begin
  result = api_instance.check_inbound_eligibility(body)
  p result
rescue AmzSpApi::AmazonWarehousingAndDistributionModel::ApiError => e
  puts "Exception when calling AwdApi->check_inbound_eligibility: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**InboundPackages**](InboundPackages.md)| Represents the packages you want to inbound. | 

### Return type

[**InboundEligibility**](InboundEligibility.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **confirm_inbound**
> confirm_inbound(order_id)



Confirms an AWD inbound order in `DRAFT` status.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 1 | 1 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values than those shown here. For more information, refer to [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'amazon-warehousing-and-distribution-model'

api_instance = AmzSpApi::AmazonWarehousingAndDistributionModel::AwdApi.new
order_id = 'order_id_example' # String | The ID of the inbound order that you want to confirm.


begin
  api_instance.confirm_inbound(order_id)
rescue AmzSpApi::AmazonWarehousingAndDistributionModel::ApiError => e
  puts "Exception when calling AwdApi->confirm_inbound: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **order_id** | **String**| The ID of the inbound order that you want to confirm. | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **create_inbound**
> InboundOrderReference create_inbound(body)



Creates a draft AWD inbound order with a list of packages for inbound shipment. The operation creates one shipment per order.   **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 1 | 1 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The preceding table indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may have higher rate and burst values than those shown here. For more information, refer to [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'amazon-warehousing-and-distribution-model'

api_instance = AmzSpApi::AmazonWarehousingAndDistributionModel::AwdApi.new
body = AmzSpApi::AmazonWarehousingAndDistributionModel::InboundOrderCreationData.new # InboundOrderCreationData | Payload for creating an inbound order.


begin
  result = api_instance.create_inbound(body)
  p result
rescue AmzSpApi::AmazonWarehousingAndDistributionModel::ApiError => e
  puts "Exception when calling AwdApi->create_inbound: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**InboundOrderCreationData**](InboundOrderCreationData.md)| Payload for creating an inbound order. | 

### Return type

[**InboundOrderReference**](InboundOrderReference.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_inbound**
> InboundOrder get_inbound(order_id)



Retrieves an AWD inbound order.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 2 | 2 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The preceding table indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may have higher rate and burst values than those shown here. For more information, refer to [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'amazon-warehousing-and-distribution-model'

api_instance = AmzSpApi::AmazonWarehousingAndDistributionModel::AwdApi.new
order_id = 'order_id_example' # String | The ID of the inbound order that you want to retrieve.


begin
  result = api_instance.get_inbound(order_id)
  p result
rescue AmzSpApi::AmazonWarehousingAndDistributionModel::ApiError => e
  puts "Exception when calling AwdApi->get_inbound: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **order_id** | **String**| The ID of the inbound order that you want to retrieve. | 

### Return type

[**InboundOrder**](InboundOrder.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_inbound_shipment**
> InboundShipment get_inbound_shipment(shipment_id, opts)



Retrieves an AWD inbound shipment.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 2 | 2 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values than those shown here. For more information, refer to [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api)

### Example
```ruby
# load the gem
require 'amazon-warehousing-and-distribution-model'

api_instance = AmzSpApi::AmazonWarehousingAndDistributionModel::AwdApi.new
shipment_id = 'shipment_id_example' # String | ID for the shipment. A shipment contains the cases being inbounded.
opts = { 
  sku_quantities: 'sku_quantities_example' # String | If equal to `SHOW`, the response includes the shipment SKU quantity details.  Defaults to `HIDE`, in which case the response does not contain SKU quantities
}

begin
  result = api_instance.get_inbound_shipment(shipment_id, opts)
  p result
rescue AmzSpApi::AmazonWarehousingAndDistributionModel::ApiError => e
  puts "Exception when calling AwdApi->get_inbound_shipment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **shipment_id** | **String**| ID for the shipment. A shipment contains the cases being inbounded. | 
 **sku_quantities** | **String**| If equal to &#x60;SHOW&#x60;, the response includes the shipment SKU quantity details.  Defaults to &#x60;HIDE&#x60;, in which case the response does not contain SKU quantities | [optional] 

### Return type

[**InboundShipment**](InboundShipment.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_inbound_shipment_labels**
> ShipmentLabels get_inbound_shipment_labels(shipment_id, opts)



Retrieves the box labels for a shipment ID that you specify. This is an asynchronous operation. If the label status is `GENERATED`, then the label URL is available.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 1 | 2 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The preceding table indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may have higher rate and burst values than those shown here. For more information, refer to [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'amazon-warehousing-and-distribution-model'

api_instance = AmzSpApi::AmazonWarehousingAndDistributionModel::AwdApi.new
shipment_id = 'shipment_id_example' # String | ID for the shipment.
opts = { 
  page_type: 'page_type_example', # String | Page type for the generated labels. The default is `PLAIN_PAPER`.
  format_type: 'format_type_example' # String | The format type of the output file that contains your labels. The default format type is `PDF`.
}

begin
  result = api_instance.get_inbound_shipment_labels(shipment_id, opts)
  p result
rescue AmzSpApi::AmazonWarehousingAndDistributionModel::ApiError => e
  puts "Exception when calling AwdApi->get_inbound_shipment_labels: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **shipment_id** | **String**| ID for the shipment. | 
 **page_type** | **String**| Page type for the generated labels. The default is &#x60;PLAIN_PAPER&#x60;. | [optional] 
 **format_type** | **String**| The format type of the output file that contains your labels. The default format type is &#x60;PDF&#x60;. | [optional] 

### Return type

[**ShipmentLabels**](ShipmentLabels.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_inbound_shipments**
> ShipmentListing list_inbound_shipments(opts)



Retrieves a summary of all the inbound AWD shipments associated with a merchant, with the ability to apply optional filters.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 1 | 1 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values than those shown here. For more information, refer to [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'amazon-warehousing-and-distribution-model'

api_instance = AmzSpApi::AmazonWarehousingAndDistributionModel::AwdApi.new
opts = { 
  sort_by: 'sort_by_example', # String | Field to sort results by. By default, the response will be sorted by UPDATED_AT.
  sort_order: 'sort_order_example', # String | Sort the response in ASCENDING or DESCENDING order. By default, the response will be sorted in DESCENDING order.
  shipment_status: 'shipment_status_example', # String | Filter by inbound shipment status.
  updated_after: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | List the inbound shipments that were updated after a certain time (inclusive). The date must be in <a href='https://developer-docs.amazon.com/sp-api/docs/iso-8601'>ISO 8601</a> format.
  updated_before: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | List the inbound shipments that were updated before a certain time (inclusive). The date must be in <a href='https://developer-docs.amazon.com/sp-api/docs/iso-8601'>ISO 8601</a> format.
  max_results: 25, # Integer | Maximum number of results to return.
  next_token: 'next_token_example' # String | A token that is used to retrieve the next page of results. The response includes `nextToken` when the number of results exceeds the specified `maxResults` value. To get the next page of results, call the operation with this token and include the same arguments as the call that produced the token. To get a complete list, call this operation until `nextToken` is null. Note that this operation can return empty pages.
}

begin
  result = api_instance.list_inbound_shipments(opts)
  p result
rescue AmzSpApi::AmazonWarehousingAndDistributionModel::ApiError => e
  puts "Exception when calling AwdApi->list_inbound_shipments: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sort_by** | **String**| Field to sort results by. By default, the response will be sorted by UPDATED_AT. | [optional] 
 **sort_order** | **String**| Sort the response in ASCENDING or DESCENDING order. By default, the response will be sorted in DESCENDING order. | [optional] 
 **shipment_status** | **String**| Filter by inbound shipment status. | [optional] 
 **updated_after** | **DateTime**| List the inbound shipments that were updated after a certain time (inclusive). The date must be in &lt;a href&#x3D;&#x27;https://developer-docs.amazon.com/sp-api/docs/iso-8601&#x27;&gt;ISO 8601&lt;/a&gt; format. | [optional] 
 **updated_before** | **DateTime**| List the inbound shipments that were updated before a certain time (inclusive). The date must be in &lt;a href&#x3D;&#x27;https://developer-docs.amazon.com/sp-api/docs/iso-8601&#x27;&gt;ISO 8601&lt;/a&gt; format. | [optional] 
 **max_results** | **Integer**| Maximum number of results to return. | [optional] [default to 25]
 **next_token** | **String**| A token that is used to retrieve the next page of results. The response includes &#x60;nextToken&#x60; when the number of results exceeds the specified &#x60;maxResults&#x60; value. To get the next page of results, call the operation with this token and include the same arguments as the call that produced the token. To get a complete list, call this operation until &#x60;nextToken&#x60; is null. Note that this operation can return empty pages. | [optional] 

### Return type

[**ShipmentListing**](ShipmentListing.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_inventory**
> InventoryListing list_inventory(opts)



Lists AWD inventory associated with a merchant with the ability to apply optional filters.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 2 | 2 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values than those shown here. For more information, refer to [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'amazon-warehousing-and-distribution-model'

api_instance = AmzSpApi::AmazonWarehousingAndDistributionModel::AwdApi.new
opts = { 
  sku: 'sku_example', # String | Filter by seller or merchant SKU for the item.
  sort_order: 'sort_order_example', # String | Sort the response in `ASCENDING` or `DESCENDING` order.
  details: 'details_example', # String | Set to `SHOW` to return summaries with additional inventory details. Defaults to `HIDE,` which returns only inventory summary totals.
  next_token: 'next_token_example', # String | A token that is used to retrieve the next page of results. The response includes `nextToken` when the number of results exceeds the specified `maxResults` value. To get the next page of results, call the operation with this token and include the same arguments as the call that produced the token. To get a complete list, call this operation until `nextToken` is null. Note that this operation can return empty pages.
  max_results: 25 # Integer | Maximum number of results to return.
}

begin
  result = api_instance.list_inventory(opts)
  p result
rescue AmzSpApi::AmazonWarehousingAndDistributionModel::ApiError => e
  puts "Exception when calling AwdApi->list_inventory: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sku** | **String**| Filter by seller or merchant SKU for the item. | [optional] 
 **sort_order** | **String**| Sort the response in &#x60;ASCENDING&#x60; or &#x60;DESCENDING&#x60; order. | [optional] 
 **details** | **String**| Set to &#x60;SHOW&#x60; to return summaries with additional inventory details. Defaults to &#x60;HIDE,&#x60; which returns only inventory summary totals. | [optional] 
 **next_token** | **String**| A token that is used to retrieve the next page of results. The response includes &#x60;nextToken&#x60; when the number of results exceeds the specified &#x60;maxResults&#x60; value. To get the next page of results, call the operation with this token and include the same arguments as the call that produced the token. To get a complete list, call this operation until &#x60;nextToken&#x60; is null. Note that this operation can return empty pages. | [optional] 
 **max_results** | **Integer**| Maximum number of results to return. | [optional] [default to 25]

### Return type

[**InventoryListing**](InventoryListing.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_inbound**
> update_inbound(bodyorder_id)



Updates an AWD inbound order that is in `DRAFT` status and not yet confirmed. Use this operation to update the `packagesToInbound`, `originAddress` and `preferences` attributes.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 1 | 1 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The preceding table indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may have higher rate and burst values than those shown here. For more information, refer to [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'amazon-warehousing-and-distribution-model'

api_instance = AmzSpApi::AmazonWarehousingAndDistributionModel::AwdApi.new
body = AmzSpApi::AmazonWarehousingAndDistributionModel::InboundOrder.new # InboundOrder | Represents an AWD inbound order.
order_id = 'order_id_example' # String | The ID of the inbound order that you want to update.


begin
  api_instance.update_inbound(bodyorder_id)
rescue AmzSpApi::AmazonWarehousingAndDistributionModel::ApiError => e
  puts "Exception when calling AwdApi->update_inbound: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**InboundOrder**](InboundOrder.md)| Represents an AWD inbound order. | 
 **order_id** | **String**| The ID of the inbound order that you want to update. | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_inbound_shipment_transport_details**
> update_inbound_shipment_transport_details(bodyshipment_id)



Updates transport details for an AWD shipment.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 1 | 1 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values than those shown here. For more information, refer to [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'amazon-warehousing-and-distribution-model'

api_instance = AmzSpApi::AmazonWarehousingAndDistributionModel::AwdApi.new
body = AmzSpApi::AmazonWarehousingAndDistributionModel::TransportationDetails.new # TransportationDetails | Transportation details for the shipment.
shipment_id = 'shipment_id_example' # String | The shipment ID.


begin
  api_instance.update_inbound_shipment_transport_details(bodyshipment_id)
rescue AmzSpApi::AmazonWarehousingAndDistributionModel::ApiError => e
  puts "Exception when calling AwdApi->update_inbound_shipment_transport_details: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**TransportationDetails**](TransportationDetails.md)| Transportation details for the shipment. | 
 **shipment_id** | **String**| The shipment ID. | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



