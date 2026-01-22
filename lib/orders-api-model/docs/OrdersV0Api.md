# AmzSpApi::OrdersApiModel::OrdersV0Api

All URIs are relative to *https://sellingpartnerapi-na.amazon.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**confirm_shipment**](OrdersV0Api.md#confirm_shipment) | **POST** /orders/v0/orders/{orderId}/shipmentConfirmation | 
[**get_order**](OrdersV0Api.md#get_order) | **GET** /orders/v0/orders/{orderId} | 
[**get_order_address**](OrdersV0Api.md#get_order_address) | **GET** /orders/v0/orders/{orderId}/address | 
[**get_order_buyer_info**](OrdersV0Api.md#get_order_buyer_info) | **GET** /orders/v0/orders/{orderId}/buyerInfo | 
[**get_order_items**](OrdersV0Api.md#get_order_items) | **GET** /orders/v0/orders/{orderId}/orderItems | 
[**get_order_items_buyer_info**](OrdersV0Api.md#get_order_items_buyer_info) | **GET** /orders/v0/orders/{orderId}/orderItems/buyerInfo | 
[**get_order_regulated_info**](OrdersV0Api.md#get_order_regulated_info) | **GET** /orders/v0/orders/{orderId}/regulatedInfo | 
[**get_orders**](OrdersV0Api.md#get_orders) | **GET** /orders/v0/orders | 
[**update_verification_status**](OrdersV0Api.md#update_verification_status) | **PATCH** /orders/v0/orders/{orderId}/regulatedInfo | 

# **confirm_shipment**
> confirm_shipment(bodyorder_id)



Updates the shipment confirmation status for a specified order.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 2 | 10 |  The `x-amzn-RateLimit-Limit` response header contains the usage plan rate limits for the operation, when available. The preceding table contains the default rate and burst values for this operation. Selling partners whose business demands require higher throughput might have higher rate and burst values than those shown here. For more information, refer to [Usage Plans and Rate Limits](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'orders-api-model'

api_instance = AmzSpApi::OrdersApiModel::OrdersV0Api.new
body = AmzSpApi::OrdersApiModel::ConfirmShipmentRequest.new # ConfirmShipmentRequest | Request body of `confirmShipment`.
order_id = 'order_id_example' # String | An Amazon-defined order identifier, in 3-7-7 format.


begin
  api_instance.confirm_shipment(bodyorder_id)
rescue AmzSpApi::OrdersApiModel::ApiError => e
  puts "Exception when calling OrdersV0Api->confirm_shipment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**ConfirmShipmentRequest**](ConfirmShipmentRequest.md)| Request body of &#x60;confirmShipment&#x60;. | 
 **order_id** | **String**| An Amazon-defined order identifier, in 3-7-7 format. | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_order**
> GetOrderResponse get_order(order_id)



Returns the order that you specify.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 0.5 | 30 |  The `x-amzn-RateLimit-Limit` response header contains the usage plan rate limits for the operation, when available. The preceding table contains the default rate and burst values for this operation. Selling partners whose business demands require higher throughput might have higher rate and burst values than those shown here. For more information, refer to [Usage Plans and Rate Limits](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'orders-api-model'

api_instance = AmzSpApi::OrdersApiModel::OrdersV0Api.new
order_id = 'order_id_example' # String | An Amazon-defined order identifier, in 3-7-7 format.


begin
  result = api_instance.get_order(order_id)
  p result
rescue AmzSpApi::OrdersApiModel::ApiError => e
  puts "Exception when calling OrdersV0Api->get_order: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **order_id** | **String**| An Amazon-defined order identifier, in 3-7-7 format. | 

### Return type

[**GetOrderResponse**](GetOrderResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_order_address**
> GetOrderAddressResponse get_order_address(order_id)



Returns the shipping address for the order that you specify.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 0.5 | 30 |  The `x-amzn-RateLimit-Limit` response header contains the usage plan rate limits for the operation, when available. The preceding table contains the default rate and burst values for this operation. Selling partners whose business demands require higher throughput might have higher rate and burst values than those shown here. For more information, refer to [Usage Plans and Rate Limits](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'orders-api-model'

api_instance = AmzSpApi::OrdersApiModel::OrdersV0Api.new
order_id = 'order_id_example' # String | The Amazon order identifier in 3-7-7 format.


begin
  result = api_instance.get_order_address(order_id)
  p result
rescue AmzSpApi::OrdersApiModel::ApiError => e
  puts "Exception when calling OrdersV0Api->get_order_address: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **order_id** | **String**| The Amazon order identifier in 3-7-7 format. | 

### Return type

[**GetOrderAddressResponse**](GetOrderAddressResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_order_buyer_info**
> GetOrderBuyerInfoResponse get_order_buyer_info(order_id)



Returns buyer information for the order that you specify.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 0.5 | 30 |  The `x-amzn-RateLimit-Limit` response header contains the usage plan rate limits for the operation, when available. The preceding table contains the default rate and burst values for this operation. Selling partners whose business demands require higher throughput might have higher rate and burst values than those shown here. For more information, refer to [Usage Plans and Rate Limits](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'orders-api-model'

api_instance = AmzSpApi::OrdersApiModel::OrdersV0Api.new
order_id = 'order_id_example' # String | The Amazon order identifier in 3-7-7 format.


begin
  result = api_instance.get_order_buyer_info(order_id)
  p result
rescue AmzSpApi::OrdersApiModel::ApiError => e
  puts "Exception when calling OrdersV0Api->get_order_buyer_info: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **order_id** | **String**| The Amazon order identifier in 3-7-7 format. | 

### Return type

[**GetOrderBuyerInfoResponse**](GetOrderBuyerInfoResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_order_items**
> GetOrderItemsResponse get_order_items(order_id, opts)



Returns detailed order item information for the order that you specify. If `NextToken` is provided, it's used to retrieve the next page of order items.  __Note__: When an order is in the Pending state (the order has been placed but payment has not been authorized), the getOrderItems operation does not return information about pricing, taxes, shipping charges, gift status or promotions for the order items in the order. After an order leaves the Pending state (this occurs when payment has been authorized) and enters the Unshipped, Partially Shipped, or Shipped state, the getOrderItems operation returns information about pricing, taxes, shipping charges, gift status and promotions for the order items in the order.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 0.5 | 30 |  The `x-amzn-RateLimit-Limit` response header contains the usage plan rate limits for the operation, when available. The preceding table contains the default rate and burst values for this operation. Selling partners whose business demands require higher throughput might have higher rate and burst values than those shown here. For more information, refer to [Usage Plans and Rate Limits](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'orders-api-model'

api_instance = AmzSpApi::OrdersApiModel::OrdersV0Api.new
order_id = 'order_id_example' # String | An Amazon-defined order identifier, in 3-7-7 format.
opts = { 
  next_token: 'next_token_example' # String | A string token returned in the response of your previous request.
}

begin
  result = api_instance.get_order_items(order_id, opts)
  p result
rescue AmzSpApi::OrdersApiModel::ApiError => e
  puts "Exception when calling OrdersV0Api->get_order_items: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **order_id** | **String**| An Amazon-defined order identifier, in 3-7-7 format. | 
 **next_token** | **String**| A string token returned in the response of your previous request. | [optional] 

### Return type

[**GetOrderItemsResponse**](GetOrderItemsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_order_items_buyer_info**
> GetOrderItemsBuyerInfoResponse get_order_items_buyer_info(order_id, opts)



Returns buyer information for the order items in the order that you specify.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 0.5 | 30 |  The `x-amzn-RateLimit-Limit` response header contains the usage plan rate limits for the operation, when available. The preceding table contains the default rate and burst values for this operation. Selling partners whose business demands require higher throughput might have higher rate and burst values than those shown here. For more information, refer to [Usage Plans and Rate Limits](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'orders-api-model'

api_instance = AmzSpApi::OrdersApiModel::OrdersV0Api.new
order_id = 'order_id_example' # String | An Amazon-defined order identifier, in 3-7-7 format.
opts = { 
  next_token: 'next_token_example' # String | A string token returned in the response of your previous request.
}

begin
  result = api_instance.get_order_items_buyer_info(order_id, opts)
  p result
rescue AmzSpApi::OrdersApiModel::ApiError => e
  puts "Exception when calling OrdersV0Api->get_order_items_buyer_info: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **order_id** | **String**| An Amazon-defined order identifier, in 3-7-7 format. | 
 **next_token** | **String**| A string token returned in the response of your previous request. | [optional] 

### Return type

[**GetOrderItemsBuyerInfoResponse**](GetOrderItemsBuyerInfoResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_order_regulated_info**
> GetOrderRegulatedInfoResponse get_order_regulated_info(order_id)



Returns regulated information for the order that you specify.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 0.5 | 30 |  The `x-amzn-RateLimit-Limit` response header contains the usage plan rate limits for the operation, when available. The preceding table contains the default rate and burst values for this operation. Selling partners whose business demands require higher throughput might have higher rate and burst values than those shown here. For more information, refer to [Usage Plans and Rate Limits](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'orders-api-model'

api_instance = AmzSpApi::OrdersApiModel::OrdersV0Api.new
order_id = 'order_id_example' # String | The Amazon order identifier in 3-7-7 format.


begin
  result = api_instance.get_order_regulated_info(order_id)
  p result
rescue AmzSpApi::OrdersApiModel::ApiError => e
  puts "Exception when calling OrdersV0Api->get_order_regulated_info: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **order_id** | **String**| The Amazon order identifier in 3-7-7 format. | 

### Return type

[**GetOrderRegulatedInfoResponse**](GetOrderRegulatedInfoResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, PendingOrder, ApprovedOrder, RejectedOrder



# **get_orders**
> GetOrdersResponse get_orders(marketplace_ids, opts)



Returns orders that are created or updated during the specified time period. If you want to return specific types of orders, you can apply filters to your request. `NextToken` doesn't affect any filters that you include in your request; it only impacts the pagination for the filtered orders response.   **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 0.0167 | 20 |  The `x-amzn-RateLimit-Limit` response header contains the usage plan rate limits for the operation, when available. The preceding table contains the default rate and burst values for this operation. Selling partners whose business demands require higher throughput might have higher rate and burst values than those shown here. For more information, refer to [Usage Plans and Rate Limits](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'orders-api-model'

api_instance = AmzSpApi::OrdersApiModel::OrdersV0Api.new
marketplace_ids = ['marketplace_ids_example'] # Array<String> | A list of `MarketplaceId` values. Used to select orders that were placed in the specified marketplaces.  Refer to [Marketplace IDs](https://developer-docs.amazon.com/sp-api/docs/marketplace-ids) for a complete list of `marketplaceId` values.
opts = { 
  created_after: 'created_after_example', # String | Use this date to select orders created after (or at) a specified time. Only orders placed after the specified time are returned. The date must be in [ISO 8601](https://developer-docs.amazon.com/sp-api/docs/iso-8601) format.  **Note**: Either the `CreatedAfter` parameter or the `LastUpdatedAfter` parameter is required. Both cannot be empty. `LastUpdatedAfter` and `LastUpdatedBefore` cannot be set when `CreatedAfter` is set.
  created_before: 'created_before_example', # String | Use this date to select orders created before (or at) a specified time. Only orders placed before the specified time are returned. The date must be in [ISO 8601](https://developer-docs.amazon.com/sp-api/docs/iso-8601) format.  **Note**: `CreatedBefore` is optional when `CreatedAfter` is set. If specified, `CreatedBefore` must be equal to or after the `CreatedAfter` date and at least two minutes before current time.
  last_updated_after: 'last_updated_after_example', # String | Use this date to select orders that were last updated after (or at) a specified time. An update is defined as any change in order status, including the creation of a new order. Includes updates made by Amazon and by the seller. The date must be in [ISO 8601](https://developer-docs.amazon.com/sp-api/docs/iso-8601) format.  **Note**: Either the `CreatedAfter` parameter or the `LastUpdatedAfter` parameter is required. Both cannot be empty. `CreatedAfter` or `CreatedBefore` cannot be set when `LastUpdatedAfter` is set.
  last_updated_before: 'last_updated_before_example', # String | Use this date to select orders that were last updated before (or at) a specified time. An update is defined as any change in order status, including the creation of a new order. Includes updates made by Amazon and by the seller. The date must be in [ISO 8601](https://developer-docs.amazon.com/sp-api/docs/iso-8601) format.  **Note**: `LastUpdatedBefore` is optional when `LastUpdatedAfter` is set. But if specified, `LastUpdatedBefore` must be equal to or after the `LastUpdatedAfter` date and at least two minutes before current time.
  order_statuses: ['order_statuses_example'], # Array<String> | A list of `OrderStatus` values used to filter the results.  **Possible values:** - `PendingAvailability` (This status is available for pre-orders only. The order has been placed, payment has not been authorized, and the release date of the item is in the future.) - `Pending` (The order has been placed but payment has not been authorized.) - `Unshipped` (Payment has been authorized and the order is ready for shipment, but no items in the order have been shipped.) - `PartiallyShipped` (One or more, but not all, items in the order have been shipped.) - `Shipped` (All items in the order have been shipped.) - `InvoiceUnconfirmed` (All items in the order have been shipped. The seller has not yet given confirmation to Amazon that the invoice has been shipped to the buyer.) - `Canceled` (The order has been canceled.) - `Unfulfillable` (The order cannot be fulfilled. This state applies only to Multi-Channel Fulfillment orders.)
  fulfillment_channels: ['fulfillment_channels_example'], # Array<String> | A list that indicates how an order was fulfilled. Filters the results by fulfillment channel.   **Possible values**: `AFN` (fulfilled by Amazon), `MFN` (fulfilled by seller).
  payment_methods: ['payment_methods_example'], # Array<String> | A list of payment method values. Use this field to select orders that were paid with the specified payment methods.  **Possible values**: `COD` (cash on delivery), `CVS` (convenience store), `Other` (Any payment method other than COD or CVS).
  buyer_email: 'buyer_email_example', # String | The email address of a buyer. Used to select orders that contain the specified email address.
  seller_order_id: 'seller_order_id_example', # String | An order identifier that is specified by the seller. Used to select only the orders that match the order identifier. If `SellerOrderId` is specified, then `FulfillmentChannels`, `OrderStatuses`, `PaymentMethod`, `LastUpdatedAfter`, LastUpdatedBefore, and `BuyerEmail` cannot be specified.
  max_results_per_page: 56, # Integer | A number that indicates the maximum number of orders that can be returned per page. Value must be 1 - 100. Default 100.
  easy_ship_shipment_statuses: ['easy_ship_shipment_statuses_example'], # Array<String> | A list of `EasyShipShipmentStatus` values. Used to select Easy Ship orders with statuses that match the specified values. If `EasyShipShipmentStatus` is specified, only Amazon Easy Ship orders are returned.  **Possible values:** - `PendingSchedule` (The package is awaiting the schedule for pick-up.) - `PendingPickUp` (Amazon has not yet picked up the package from the seller.) - `PendingDropOff` (The seller will deliver the package to the carrier.) - `LabelCanceled` (The seller canceled the pickup.) - `PickedUp` (Amazon has picked up the package from the seller.) - `DroppedOff` (The package is delivered to the carrier by the seller.) - `AtOriginFC` (The packaged is at the origin fulfillment center.) - `AtDestinationFC` (The package is at the destination fulfillment center.) - `Delivered` (The package has been delivered.) - `RejectedByBuyer` (The package has been rejected by the buyer.) - `Undeliverable` (The package cannot be delivered.) - `ReturningToSeller` (The package was not delivered and is being returned to the seller.) - `ReturnedToSeller` (The package was not delivered and was returned to the seller.) - `Lost` (The package is lost.) - `OutForDelivery` (The package is out for delivery.) - `Damaged` (The package was damaged by the carrier.)
  electronic_invoice_statuses: ['electronic_invoice_statuses_example'], # Array<String> | A list of `ElectronicInvoiceStatus` values. Used to select orders with electronic invoice statuses that match the specified values.  **Possible values:** - `NotRequired` (Electronic invoice submission is not required for this order.) - `NotFound` (The electronic invoice was not submitted for this order.) - `Processing` (The electronic invoice is being processed for this order.) - `Errored` (The last submitted electronic invoice was rejected for this order.) - `Accepted` (The last submitted electronic invoice was submitted and accepted.)
  next_token: 'next_token_example', # String | A string token returned in the response of your previous request.
  amazon_order_ids: ['amazon_order_ids_example'], # Array<String> | A list of `AmazonOrderId` values. An `AmazonOrderId` is an Amazon-defined order identifier, in 3-7-7 format.
  actual_fulfillment_supply_source_id: 'actual_fulfillment_supply_source_id_example', # String | The `sourceId` of the location from where you want the order fulfilled.
  is_ispu: true, # BOOLEAN | When true, this order is marked to be picked up from a store rather than delivered.
  store_chain_store_id: 'store_chain_store_id_example', # String | The store chain store identifier. Linked to a specific store in a store chain.
  earliest_delivery_date_before: 'earliest_delivery_date_before_example', # String | Use this date to select orders with a earliest delivery date before (or at) a specified time. The date must be in [ISO 8601](https://developer-docs.amazon.com/sp-api/docs/iso-8601) format.
  earliest_delivery_date_after: 'earliest_delivery_date_after_example', # String | Use this date to select orders with a earliest delivery date after (or at) a specified time. The date must be in [ISO 8601](https://developer-docs.amazon.com/sp-api/docs/iso-8601) format.
  latest_delivery_date_before: 'latest_delivery_date_before_example', # String | Use this date to select orders with a latest delivery date before (or at) a specified time. The date must be in [ISO 8601](https://developer-docs.amazon.com/sp-api/docs/iso-8601) format.
  latest_delivery_date_after: 'latest_delivery_date_after_example' # String | Use this date to select orders with a latest delivery date after (or at) a specified time. The date must be in [ISO 8601](https://developer-docs.amazon.com/sp-api/docs/iso-8601) format.
}

begin
  result = api_instance.get_orders(marketplace_ids, opts)
  p result
rescue AmzSpApi::OrdersApiModel::ApiError => e
  puts "Exception when calling OrdersV0Api->get_orders: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **marketplace_ids** | [**Array&lt;String&gt;**](String.md)| A list of &#x60;MarketplaceId&#x60; values. Used to select orders that were placed in the specified marketplaces.  Refer to [Marketplace IDs](https://developer-docs.amazon.com/sp-api/docs/marketplace-ids) for a complete list of &#x60;marketplaceId&#x60; values. | 
 **created_after** | **String**| Use this date to select orders created after (or at) a specified time. Only orders placed after the specified time are returned. The date must be in [ISO 8601](https://developer-docs.amazon.com/sp-api/docs/iso-8601) format.  **Note**: Either the &#x60;CreatedAfter&#x60; parameter or the &#x60;LastUpdatedAfter&#x60; parameter is required. Both cannot be empty. &#x60;LastUpdatedAfter&#x60; and &#x60;LastUpdatedBefore&#x60; cannot be set when &#x60;CreatedAfter&#x60; is set. | [optional] 
 **created_before** | **String**| Use this date to select orders created before (or at) a specified time. Only orders placed before the specified time are returned. The date must be in [ISO 8601](https://developer-docs.amazon.com/sp-api/docs/iso-8601) format.  **Note**: &#x60;CreatedBefore&#x60; is optional when &#x60;CreatedAfter&#x60; is set. If specified, &#x60;CreatedBefore&#x60; must be equal to or after the &#x60;CreatedAfter&#x60; date and at least two minutes before current time. | [optional] 
 **last_updated_after** | **String**| Use this date to select orders that were last updated after (or at) a specified time. An update is defined as any change in order status, including the creation of a new order. Includes updates made by Amazon and by the seller. The date must be in [ISO 8601](https://developer-docs.amazon.com/sp-api/docs/iso-8601) format.  **Note**: Either the &#x60;CreatedAfter&#x60; parameter or the &#x60;LastUpdatedAfter&#x60; parameter is required. Both cannot be empty. &#x60;CreatedAfter&#x60; or &#x60;CreatedBefore&#x60; cannot be set when &#x60;LastUpdatedAfter&#x60; is set. | [optional] 
 **last_updated_before** | **String**| Use this date to select orders that were last updated before (or at) a specified time. An update is defined as any change in order status, including the creation of a new order. Includes updates made by Amazon and by the seller. The date must be in [ISO 8601](https://developer-docs.amazon.com/sp-api/docs/iso-8601) format.  **Note**: &#x60;LastUpdatedBefore&#x60; is optional when &#x60;LastUpdatedAfter&#x60; is set. But if specified, &#x60;LastUpdatedBefore&#x60; must be equal to or after the &#x60;LastUpdatedAfter&#x60; date and at least two minutes before current time. | [optional] 
 **order_statuses** | [**Array&lt;String&gt;**](String.md)| A list of &#x60;OrderStatus&#x60; values used to filter the results.  **Possible values:** - &#x60;PendingAvailability&#x60; (This status is available for pre-orders only. The order has been placed, payment has not been authorized, and the release date of the item is in the future.) - &#x60;Pending&#x60; (The order has been placed but payment has not been authorized.) - &#x60;Unshipped&#x60; (Payment has been authorized and the order is ready for shipment, but no items in the order have been shipped.) - &#x60;PartiallyShipped&#x60; (One or more, but not all, items in the order have been shipped.) - &#x60;Shipped&#x60; (All items in the order have been shipped.) - &#x60;InvoiceUnconfirmed&#x60; (All items in the order have been shipped. The seller has not yet given confirmation to Amazon that the invoice has been shipped to the buyer.) - &#x60;Canceled&#x60; (The order has been canceled.) - &#x60;Unfulfillable&#x60; (The order cannot be fulfilled. This state applies only to Multi-Channel Fulfillment orders.) | [optional] 
 **fulfillment_channels** | [**Array&lt;String&gt;**](String.md)| A list that indicates how an order was fulfilled. Filters the results by fulfillment channel.   **Possible values**: &#x60;AFN&#x60; (fulfilled by Amazon), &#x60;MFN&#x60; (fulfilled by seller). | [optional] 
 **payment_methods** | [**Array&lt;String&gt;**](String.md)| A list of payment method values. Use this field to select orders that were paid with the specified payment methods.  **Possible values**: &#x60;COD&#x60; (cash on delivery), &#x60;CVS&#x60; (convenience store), &#x60;Other&#x60; (Any payment method other than COD or CVS). | [optional] 
 **buyer_email** | **String**| The email address of a buyer. Used to select orders that contain the specified email address. | [optional] 
 **seller_order_id** | **String**| An order identifier that is specified by the seller. Used to select only the orders that match the order identifier. If &#x60;SellerOrderId&#x60; is specified, then &#x60;FulfillmentChannels&#x60;, &#x60;OrderStatuses&#x60;, &#x60;PaymentMethod&#x60;, &#x60;LastUpdatedAfter&#x60;, LastUpdatedBefore, and &#x60;BuyerEmail&#x60; cannot be specified. | [optional] 
 **max_results_per_page** | **Integer**| A number that indicates the maximum number of orders that can be returned per page. Value must be 1 - 100. Default 100. | [optional] 
 **easy_ship_shipment_statuses** | [**Array&lt;String&gt;**](String.md)| A list of &#x60;EasyShipShipmentStatus&#x60; values. Used to select Easy Ship orders with statuses that match the specified values. If &#x60;EasyShipShipmentStatus&#x60; is specified, only Amazon Easy Ship orders are returned.  **Possible values:** - &#x60;PendingSchedule&#x60; (The package is awaiting the schedule for pick-up.) - &#x60;PendingPickUp&#x60; (Amazon has not yet picked up the package from the seller.) - &#x60;PendingDropOff&#x60; (The seller will deliver the package to the carrier.) - &#x60;LabelCanceled&#x60; (The seller canceled the pickup.) - &#x60;PickedUp&#x60; (Amazon has picked up the package from the seller.) - &#x60;DroppedOff&#x60; (The package is delivered to the carrier by the seller.) - &#x60;AtOriginFC&#x60; (The packaged is at the origin fulfillment center.) - &#x60;AtDestinationFC&#x60; (The package is at the destination fulfillment center.) - &#x60;Delivered&#x60; (The package has been delivered.) - &#x60;RejectedByBuyer&#x60; (The package has been rejected by the buyer.) - &#x60;Undeliverable&#x60; (The package cannot be delivered.) - &#x60;ReturningToSeller&#x60; (The package was not delivered and is being returned to the seller.) - &#x60;ReturnedToSeller&#x60; (The package was not delivered and was returned to the seller.) - &#x60;Lost&#x60; (The package is lost.) - &#x60;OutForDelivery&#x60; (The package is out for delivery.) - &#x60;Damaged&#x60; (The package was damaged by the carrier.) | [optional] 
 **electronic_invoice_statuses** | [**Array&lt;String&gt;**](String.md)| A list of &#x60;ElectronicInvoiceStatus&#x60; values. Used to select orders with electronic invoice statuses that match the specified values.  **Possible values:** - &#x60;NotRequired&#x60; (Electronic invoice submission is not required for this order.) - &#x60;NotFound&#x60; (The electronic invoice was not submitted for this order.) - &#x60;Processing&#x60; (The electronic invoice is being processed for this order.) - &#x60;Errored&#x60; (The last submitted electronic invoice was rejected for this order.) - &#x60;Accepted&#x60; (The last submitted electronic invoice was submitted and accepted.) | [optional] 
 **next_token** | **String**| A string token returned in the response of your previous request. | [optional] 
 **amazon_order_ids** | [**Array&lt;String&gt;**](String.md)| A list of &#x60;AmazonOrderId&#x60; values. An &#x60;AmazonOrderId&#x60; is an Amazon-defined order identifier, in 3-7-7 format. | [optional] 
 **actual_fulfillment_supply_source_id** | **String**| The &#x60;sourceId&#x60; of the location from where you want the order fulfilled. | [optional] 
 **is_ispu** | **BOOLEAN**| When true, this order is marked to be picked up from a store rather than delivered. | [optional] 
 **store_chain_store_id** | **String**| The store chain store identifier. Linked to a specific store in a store chain. | [optional] 
 **earliest_delivery_date_before** | **String**| Use this date to select orders with a earliest delivery date before (or at) a specified time. The date must be in [ISO 8601](https://developer-docs.amazon.com/sp-api/docs/iso-8601) format. | [optional] 
 **earliest_delivery_date_after** | **String**| Use this date to select orders with a earliest delivery date after (or at) a specified time. The date must be in [ISO 8601](https://developer-docs.amazon.com/sp-api/docs/iso-8601) format. | [optional] 
 **latest_delivery_date_before** | **String**| Use this date to select orders with a latest delivery date before (or at) a specified time. The date must be in [ISO 8601](https://developer-docs.amazon.com/sp-api/docs/iso-8601) format. | [optional] 
 **latest_delivery_date_after** | **String**| Use this date to select orders with a latest delivery date after (or at) a specified time. The date must be in [ISO 8601](https://developer-docs.amazon.com/sp-api/docs/iso-8601) format. | [optional] 

### Return type

[**GetOrdersResponse**](GetOrdersResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_verification_status**
> update_verification_status(bodyorder_id)



Updates (approves or rejects) the verification status of an order containing regulated products.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 0.5 | 30 |  The `x-amzn-RateLimit-Limit` response header contains the usage plan rate limits for the operation, when available. The preceding table contains the default rate and burst values for this operation. Selling partners whose business demands require higher throughput might have higher rate and burst values than those shown here. For more information, refer to [Usage Plans and Rate Limits](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'orders-api-model'

api_instance = AmzSpApi::OrdersApiModel::OrdersV0Api.new
body = AmzSpApi::OrdersApiModel::UpdateVerificationStatusRequest.new # UpdateVerificationStatusRequest | The request body for the `updateVerificationStatus` operation.
order_id = 'order_id_example' # String | The Amazon order identifier in 3-7-7 format.


begin
  api_instance.update_verification_status(bodyorder_id)
rescue AmzSpApi::OrdersApiModel::ApiError => e
  puts "Exception when calling OrdersV0Api->update_verification_status: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**UpdateVerificationStatusRequest**](UpdateVerificationStatusRequest.md)| The request body for the &#x60;updateVerificationStatus&#x60; operation. | 
 **order_id** | **String**| The Amazon order identifier in 3-7-7 format. | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



