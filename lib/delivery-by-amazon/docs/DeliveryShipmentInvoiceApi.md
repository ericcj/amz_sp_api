# AmzSpApi::DeliveryByAmazon::DeliveryShipmentInvoiceApi

All URIs are relative to *https://sellingpartnerapi-na.amazon.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_invoice_status**](DeliveryShipmentInvoiceApi.md#get_invoice_status) | **GET** /delivery/2022-07-01/invoice/status | 
[**submit_invoice**](DeliveryShipmentInvoiceApi.md#submit_invoice) | **POST** /delivery/2022-07-01/invoice | 

# **get_invoice_status**
> GetInvoiceStatusResponse get_invoice_status(marketplace_id, invoice_type, program_type, opts)



Returns the invoice status for the order or shipment you specify. You must specify either an `orderId` or `shipmentId` as query parameter. If both parameters are supplied, `orderId` takes precedence over `shipmentId`.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 1.133 | 25 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values than those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](doc:usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'delivery-by-amazon'

api_instance = AmzSpApi::DeliveryByAmazon::DeliveryShipmentInvoiceApi.new
marketplace_id = 'marketplace_id_example' # String | The marketplace identifier.
invoice_type = 'invoice_type_example' # String | The invoice's type.
program_type = 'program_type_example' # String | The Amazon program that seller is currently enrolled.
opts = { 
  order_id: 'order_id_example', # String | The order identifier.
  shipment_id: 'shipment_id_example' # String | The shipment identifier.
}

begin
  result = api_instance.get_invoice_status(marketplace_id, invoice_type, program_type, opts)
  p result
rescue AmzSpApi::DeliveryByAmazon::ApiError => e
  puts "Exception when calling DeliveryShipmentInvoiceApi->get_invoice_status: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **marketplace_id** | **String**| The marketplace identifier. | 
 **invoice_type** | **String**| The invoice&#x27;s type. | 
 **program_type** | **String**| The Amazon program that seller is currently enrolled. | 
 **order_id** | **String**| The order identifier. | [optional] 
 **shipment_id** | **String**| The shipment identifier. | [optional] 

### Return type

[**GetInvoiceStatusResponse**](GetInvoiceStatusResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **submit_invoice**
> SubmitInvoiceResponse submit_invoice(body, opts)



Submits a shipment invoice for a given order or shipment. You must specify either an `orderId` or `shipmentId` as query parameter. If both parameters are supplied, `orderId` takes precedence over `shipmentId`.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 1.133 | 25 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values than those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](doc:usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'delivery-by-amazon'

api_instance = AmzSpApi::DeliveryByAmazon::DeliveryShipmentInvoiceApi.new
body = AmzSpApi::DeliveryByAmazon::SubmitInvoiceRequest.new # SubmitInvoiceRequest | The request body that specifies invoice, program and marketplace values.
opts = { 
  order_id: 'order_id_example' # String | The identifier for the order.
  shipment_id: 'shipment_id_example' # String | The identifier for the shipment.
}

begin
  result = api_instance.submit_invoice(body, opts)
  p result
rescue AmzSpApi::DeliveryByAmazon::ApiError => e
  puts "Exception when calling DeliveryShipmentInvoiceApi->submit_invoice: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SubmitInvoiceRequest**](SubmitInvoiceRequest.md)| The request body that specifies invoice, program and marketplace values. | 
 **order_id** | **String**| The identifier for the order. | [optional] 
 **shipment_id** | **String**| The identifier for the shipment. | [optional] 

### Return type

[**SubmitInvoiceResponse**](SubmitInvoiceResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



