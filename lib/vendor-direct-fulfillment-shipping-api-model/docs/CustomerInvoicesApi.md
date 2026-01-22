# AmzSpApi::VendorDirectFulfillmentShippingApiModel::CustomerInvoicesApi

All URIs are relative to *https://sellingpartnerapi-na.amazon.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_customer_invoice**](CustomerInvoicesApi.md#get_customer_invoice) | **GET** /vendor/directFulfillment/shipping/v1/customerInvoices/{purchaseOrderNumber} | 
[**get_customer_invoices**](CustomerInvoicesApi.md#get_customer_invoices) | **GET** /vendor/directFulfillment/shipping/v1/customerInvoices | 

# **get_customer_invoice**
> GetCustomerInvoiceResponse get_customer_invoice(purchase_order_number)



Returns a customer invoice based on the purchaseOrderNumber that you specify.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 10 | 10 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values than those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'vendor-direct-fulfillment-shipping-api-model'

api_instance = AmzSpApi::VendorDirectFulfillmentShippingApiModel::CustomerInvoicesApi.new
purchase_order_number = 'purchase_order_number_example' # String | Purchase order number of the shipment for which to return the invoice.


begin
  result = api_instance.get_customer_invoice(purchase_order_number)
  p result
rescue AmzSpApi::VendorDirectFulfillmentShippingApiModel::ApiError => e
  puts "Exception when calling CustomerInvoicesApi->get_customer_invoice: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **purchase_order_number** | **String**| Purchase order number of the shipment for which to return the invoice. | 

### Return type

[**GetCustomerInvoiceResponse**](GetCustomerInvoiceResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_customer_invoices**
> GetCustomerInvoicesResponse get_customer_invoices(created_after, created_before, opts)



Returns a list of customer invoices created during a time frame that you specify. You define the  time frame using the createdAfter and createdBefore parameters. You must use both of these parameters. The date range to search must be no more than 7 days.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 10 | 10 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values than those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'vendor-direct-fulfillment-shipping-api-model'

api_instance = AmzSpApi::VendorDirectFulfillmentShippingApiModel::CustomerInvoicesApi.new
created_after = DateTime.parse('2013-10-20T19:20:30+01:00') # DateTime | Orders that became available after this date and time will be included in the result. Must be in ISO-8601 date/time format.
created_before = DateTime.parse('2013-10-20T19:20:30+01:00') # DateTime | Orders that became available before this date and time will be included in the result. Must be in ISO-8601 date/time format.
opts = { 
  ship_from_party_id: 'ship_from_party_id_example', # String | The vendor warehouseId for order fulfillment. If not specified, the result will contain orders for all warehouses.
  limit: 56, # Integer | The limit to the number of records returned
  sort_order: 'sort_order_example', # String | Sort ASC or DESC by order creation date.
  next_token: 'next_token_example' # String | Used for pagination when there are more orders than the specified result size limit. The token value is returned in the previous API call.
}

begin
  result = api_instance.get_customer_invoices(created_after, created_before, opts)
  p result
rescue AmzSpApi::VendorDirectFulfillmentShippingApiModel::ApiError => e
  puts "Exception when calling CustomerInvoicesApi->get_customer_invoices: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **created_after** | **DateTime**| Orders that became available after this date and time will be included in the result. Must be in ISO-8601 date/time format. | 
 **created_before** | **DateTime**| Orders that became available before this date and time will be included in the result. Must be in ISO-8601 date/time format. | 
 **ship_from_party_id** | **String**| The vendor warehouseId for order fulfillment. If not specified, the result will contain orders for all warehouses. | [optional] 
 **limit** | **Integer**| The limit to the number of records returned | [optional] 
 **sort_order** | **String**| Sort ASC or DESC by order creation date. | [optional] 
 **next_token** | **String**| Used for pagination when there are more orders than the specified result size limit. The token value is returned in the previous API call. | [optional] 

### Return type

[**GetCustomerInvoicesResponse**](GetCustomerInvoicesResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, payload



