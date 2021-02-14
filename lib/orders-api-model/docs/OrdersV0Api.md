# AmzSpApi::OrdersApiModel::OrdersV0Api

All URIs are relative to *https://sellingpartnerapi-na.amazon.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_order**](OrdersV0Api.md#get_order) | **GET** /orders/v0/orders/{orderId} | 
[**get_order_address**](OrdersV0Api.md#get_order_address) | **GET** /orders/v0/orders/{orderId}/address | 
[**get_order_buyer_info**](OrdersV0Api.md#get_order_buyer_info) | **GET** /orders/v0/orders/{orderId}/buyerInfo | 
[**get_order_items**](OrdersV0Api.md#get_order_items) | **GET** /orders/v0/orders/{orderId}/orderItems | 
[**get_order_items_buyer_info**](OrdersV0Api.md#get_order_items_buyer_info) | **GET** /orders/v0/orders/{orderId}/orderItems/buyerInfo | 
[**get_orders**](OrdersV0Api.md#get_orders) | **GET** /orders/v0/orders | 

# **get_order**
> GetOrderResponse get_order(order_id)



Returns the order indicated by the specified order ID.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 1 | 1 |  For more information, see \"Usage Plans and Rate Limits\" in the Selling Partner API documentation.

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



Returns the shipping address for the order indicated by the specified order ID.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 1 | 1 |  For more information, see \"Usage Plans and Rate Limits\" in the Selling Partner API documentation.

### Example
```ruby
# load the gem
require 'orders-api-model'

api_instance = AmzSpApi::OrdersApiModel::OrdersV0Api.new
order_id = 'order_id_example' # String | An orderId is an Amazon-defined order identifier, in 3-7-7 format.


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
 **order_id** | **String**| An orderId is an Amazon-defined order identifier, in 3-7-7 format. | 

### Return type

[**GetOrderAddressResponse**](GetOrderAddressResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_order_buyer_info**
> GetOrderBuyerInfoResponse get_order_buyer_info(order_id)



Returns buyer information for the order indicated by the specified order ID.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 1 | 1 |  For more information, see \"Usage Plans and Rate Limits\" in the Selling Partner API documentation.

### Example
```ruby
# load the gem
require 'orders-api-model'

api_instance = AmzSpApi::OrdersApiModel::OrdersV0Api.new
order_id = 'order_id_example' # String | An orderId is an Amazon-defined order identifier, in 3-7-7 format.


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
 **order_id** | **String**| An orderId is an Amazon-defined order identifier, in 3-7-7 format. | 

### Return type

[**GetOrderBuyerInfoResponse**](GetOrderBuyerInfoResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_order_items**
> GetOrderItemsResponse get_order_items(order_id, opts)



Returns detailed order item information for the order indicated by the specified order ID. If NextToken is provided, it's used to retrieve the next page of order items.  Note: When an order is in the Pending state (the order has been placed but payment has not been authorized), the getOrderItems operation does not return information about pricing, taxes, shipping charges, gift status or promotions for the order items in the order. After an order leaves the Pending state (this occurs when payment has been authorized) and enters the Unshipped, Partially Shipped, or Shipped state, the getOrderItems operation returns information about pricing, taxes, shipping charges, gift status and promotions for the order items in the order.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 1 | 1 |  For more information, see \"Usage Plans and Rate Limits\" in the Selling Partner API documentation.

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



Returns buyer information in the order items of the order indicated by the specified order ID.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 1 | 1 |  For more information, see \"Usage Plans and Rate Limits\" in the Selling Partner API documentation.

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



# **get_orders**
> GetOrdersResponse get_orders(marketplace_ids, opts)



Returns orders created or updated during the time frame indicated by the specified parameters. You can also apply a range of filtering criteria to narrow the list of orders returned. If NextToken is present, that will be used to retrieve the orders instead of other criteria.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 1 | 1 |  For more information, see \"Usage Plans and Rate Limits\" in the Selling Partner API documentation.

### Example
```ruby
# load the gem
require 'orders-api-model'

api_instance = AmzSpApi::OrdersApiModel::OrdersV0Api.new
marketplace_ids = ['marketplace_ids_example'] # Array<String> | A list of MarketplaceId values. Used to select orders that were placed in the specified marketplaces.
opts = { 
  created_after: 'created_after_example', # String | A date used for selecting orders created after (or at) a specified time. Only orders placed after the specified time are returned. Either the CreatedAfter parameter or the LastUpdatedAfter parameter is required. Both cannot be empty. The date must be in ISO 8601 format.
  created_before: 'created_before_example', # String | A date used for selecting orders created before (or at) a specified time. Only orders placed before the specified time are returned. The date must be in ISO 8601 format.
  last_updated_after: 'last_updated_after_example', # String | A date used for selecting orders that were last updated after (or at) a specified time. An update is defined as any change in order status, including the creation of a new order. Includes updates made by Amazon and by the seller. The date must be in ISO 8601 format.
  last_updated_before: 'last_updated_before_example', # String | A date used for selecting orders that were last updated before (or at) a specified time. An update is defined as any change in order status, including the creation of a new order. Includes updates made by Amazon and by the seller. The date must be in ISO 8601 format.
  order_statuses: ['order_statuses_example'], # Array<String> | A list of OrderStatus values used to filter the results. Possible values: PendingAvailability (This status is available for pre-orders only. The order has been placed, payment has not been authorized, and the release date of the item is in the future.); Pending (The order has been placed but payment has not been authorized); Unshipped (Payment has been authorized and the order is ready for shipment, but no items in the order have been shipped); PartiallyShipped (One or more, but not all, items in the order have been shipped); Shipped (All items in the order have been shipped); InvoiceUnconfirmed (All items in the order have been shipped. The seller has not yet given confirmation to Amazon that the invoice has been shipped to the buyer.); Canceled (The order has been canceled); and Unfulfillable (The order cannot be fulfilled. This state applies only to Multi-Channel Fulfillment orders.).
  fulfillment_channels: ['fulfillment_channels_example'], # Array<String> | A list that indicates how an order was fulfilled. Filters the results by fulfillment channel. Possible values: FBA (Fulfillment by Amazon); SellerFulfilled (Fulfilled by the seller).
  payment_methods: ['payment_methods_example'], # Array<String> | A list of payment method values. Used to select orders paid using the specified payment methods. Possible values: COD (Cash on delivery); CVS (Convenience store payment); Other (Any payment method other than COD or CVS).
  buyer_email: 'buyer_email_example', # String | The email address of a buyer. Used to select orders that contain the specified email address.
  seller_order_id: 'seller_order_id_example', # String | An order identifier that is specified by the seller. Used to select only the orders that match the order identifier. If SellerOrderId is specified, then FulfillmentChannels, OrderStatuses, PaymentMethod, LastUpdatedAfter, LastUpdatedBefore, and BuyerEmail cannot be specified.
  max_results_per_page: 56, # Integer | A number that indicates the maximum number of orders that can be returned per page. Value must be 1 - 100. Default 100.
  easy_ship_shipment_statuses: ['easy_ship_shipment_statuses_example'], # Array<String> | A list of EasyShipShipmentStatus values. Used to select Easy Ship orders with statuses that match the specified  values. If EasyShipShipmentStatus is specified, only Amazon Easy Ship orders are returned.Possible values: PendingPickUp (Amazon has not yet picked up the package from the seller). LabelCanceled (The seller canceled the pickup). PickedUp (Amazon has picked up the package from the seller). AtOriginFC (The packaged is at the origin fulfillment center). AtDestinationFC (The package is at the destination fulfillment center). OutForDelivery (The package is out for delivery). Damaged (The package was damaged by the carrier). Delivered (The package has been delivered to the buyer). RejectedByBuyer (The package has been rejected by the buyer). Undeliverable (The package cannot be delivered). ReturnedToSeller (The package was not delivered to the buyer and was returned to the seller). ReturningToSeller (The package was not delivered to the buyer and is being returned to the seller).
  next_token: 'next_token_example', # String | A string token returned in the response of your previous request.
  amazon_order_ids: ['amazon_order_ids_example'] # Array<String> | A list of AmazonOrderId values. An AmazonOrderId is an Amazon-defined order identifier, in 3-7-7 format.
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
 **marketplace_ids** | [**Array&lt;String&gt;**](String.md)| A list of MarketplaceId values. Used to select orders that were placed in the specified marketplaces. | 
 **created_after** | **String**| A date used for selecting orders created after (or at) a specified time. Only orders placed after the specified time are returned. Either the CreatedAfter parameter or the LastUpdatedAfter parameter is required. Both cannot be empty. The date must be in ISO 8601 format. | [optional] 
 **created_before** | **String**| A date used for selecting orders created before (or at) a specified time. Only orders placed before the specified time are returned. The date must be in ISO 8601 format. | [optional] 
 **last_updated_after** | **String**| A date used for selecting orders that were last updated after (or at) a specified time. An update is defined as any change in order status, including the creation of a new order. Includes updates made by Amazon and by the seller. The date must be in ISO 8601 format. | [optional] 
 **last_updated_before** | **String**| A date used for selecting orders that were last updated before (or at) a specified time. An update is defined as any change in order status, including the creation of a new order. Includes updates made by Amazon and by the seller. The date must be in ISO 8601 format. | [optional] 
 **order_statuses** | [**Array&lt;String&gt;**](String.md)| A list of OrderStatus values used to filter the results. Possible values: PendingAvailability (This status is available for pre-orders only. The order has been placed, payment has not been authorized, and the release date of the item is in the future.); Pending (The order has been placed but payment has not been authorized); Unshipped (Payment has been authorized and the order is ready for shipment, but no items in the order have been shipped); PartiallyShipped (One or more, but not all, items in the order have been shipped); Shipped (All items in the order have been shipped); InvoiceUnconfirmed (All items in the order have been shipped. The seller has not yet given confirmation to Amazon that the invoice has been shipped to the buyer.); Canceled (The order has been canceled); and Unfulfillable (The order cannot be fulfilled. This state applies only to Multi-Channel Fulfillment orders.). | [optional] 
 **fulfillment_channels** | [**Array&lt;String&gt;**](String.md)| A list that indicates how an order was fulfilled. Filters the results by fulfillment channel. Possible values: FBA (Fulfillment by Amazon); SellerFulfilled (Fulfilled by the seller). | [optional] 
 **payment_methods** | [**Array&lt;String&gt;**](String.md)| A list of payment method values. Used to select orders paid using the specified payment methods. Possible values: COD (Cash on delivery); CVS (Convenience store payment); Other (Any payment method other than COD or CVS). | [optional] 
 **buyer_email** | **String**| The email address of a buyer. Used to select orders that contain the specified email address. | [optional] 
 **seller_order_id** | **String**| An order identifier that is specified by the seller. Used to select only the orders that match the order identifier. If SellerOrderId is specified, then FulfillmentChannels, OrderStatuses, PaymentMethod, LastUpdatedAfter, LastUpdatedBefore, and BuyerEmail cannot be specified. | [optional] 
 **max_results_per_page** | **Integer**| A number that indicates the maximum number of orders that can be returned per page. Value must be 1 - 100. Default 100. | [optional] 
 **easy_ship_shipment_statuses** | [**Array&lt;String&gt;**](String.md)| A list of EasyShipShipmentStatus values. Used to select Easy Ship orders with statuses that match the specified  values. If EasyShipShipmentStatus is specified, only Amazon Easy Ship orders are returned.Possible values: PendingPickUp (Amazon has not yet picked up the package from the seller). LabelCanceled (The seller canceled the pickup). PickedUp (Amazon has picked up the package from the seller). AtOriginFC (The packaged is at the origin fulfillment center). AtDestinationFC (The package is at the destination fulfillment center). OutForDelivery (The package is out for delivery). Damaged (The package was damaged by the carrier). Delivered (The package has been delivered to the buyer). RejectedByBuyer (The package has been rejected by the buyer). Undeliverable (The package cannot be delivered). ReturnedToSeller (The package was not delivered to the buyer and was returned to the seller). ReturningToSeller (The package was not delivered to the buyer and is being returned to the seller). | [optional] 
 **next_token** | **String**| A string token returned in the response of your previous request. | [optional] 
 **amazon_order_ids** | [**Array&lt;String&gt;**](String.md)| A list of AmazonOrderId values. An AmazonOrderId is an Amazon-defined order identifier, in 3-7-7 format. | [optional] 

### Return type

[**GetOrdersResponse**](GetOrdersResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



