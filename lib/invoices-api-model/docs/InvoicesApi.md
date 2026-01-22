# AmzSpApi::InvoicesApiModel::InvoicesApi

All URIs are relative to *https://sellingpartnerapi-na.amazon.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_invoices_export**](InvoicesApi.md#create_invoices_export) | **POST** /tax/invoices/2024-06-19/exports | 
[**get_invoice**](InvoicesApi.md#get_invoice) | **GET** /tax/invoices/2024-06-19/invoices/{invoiceId} | 
[**get_invoices**](InvoicesApi.md#get_invoices) | **GET** /tax/invoices/2024-06-19/invoices | 
[**get_invoices_attributes**](InvoicesApi.md#get_invoices_attributes) | **GET** /tax/invoices/2024-06-19/attributes | 
[**get_invoices_document**](InvoicesApi.md#get_invoices_document) | **GET** /tax/invoices/2024-06-19/documents/{invoicesDocumentId} | 
[**get_invoices_export**](InvoicesApi.md#get_invoices_export) | **GET** /tax/invoices/2024-06-19/exports/{exportId} | 
[**get_invoices_exports**](InvoicesApi.md#get_invoices_exports) | **GET** /tax/invoices/2024-06-19/exports | 

# **create_invoices_export**
> ExportInvoicesResponse create_invoices_export(body)



Creates an invoice export request.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 0.167 | 1 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The preceding table indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may have higher rate and burst values than those shown here. For more information, refer to [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'invoices-api-model'

api_instance = AmzSpApi::InvoicesApiModel::InvoicesApi.new
body = AmzSpApi::InvoicesApiModel::ExportInvoicesRequest.new # ExportInvoicesRequest | Information required to create the export request.


begin
  result = api_instance.create_invoices_export(body)
  p result
rescue AmzSpApi::InvoicesApiModel::ApiError => e
  puts "Exception when calling InvoicesApi->create_invoices_export: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**ExportInvoicesRequest**](ExportInvoicesRequest.md)| Information required to create the export request. | 

### Return type

[**ExportInvoicesResponse**](ExportInvoicesResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_invoice**
> GetInvoiceResponse get_invoice(marketplace_id, invoice_id)



Returns invoice data for the specified invoice. This operation returns only a subset of the invoices data; refer to the response definition to get all the possible attributes. To get the full invoice, use the `createInvoicesExport` operation to start an export request.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 2 | 15 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The preceding table indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may have higher rate and burst values than those shown here. For more information, refer to [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'invoices-api-model'

api_instance = AmzSpApi::InvoicesApiModel::InvoicesApi.new
marketplace_id = 'marketplace_id_example' # String | The marketplace from which you want the invoice.
invoice_id = 'invoice_id_example' # String | The invoice identifier.


begin
  result = api_instance.get_invoice(marketplace_id, invoice_id)
  p result
rescue AmzSpApi::InvoicesApiModel::ApiError => e
  puts "Exception when calling InvoicesApi->get_invoice: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **marketplace_id** | **String**| The marketplace from which you want the invoice. | 
 **invoice_id** | **String**| The invoice identifier. | 

### Return type

[**GetInvoiceResponse**](GetInvoiceResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_invoices**
> GetInvoicesResponse get_invoices(marketplace_id, opts)



Returns invoice details for the invoices that match the filters that you specify.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 0.1 | 20 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The preceding table indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may have higher rate and burst values than those shown here. For more information, refer to [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'invoices-api-model'

api_instance = AmzSpApi::InvoicesApiModel::InvoicesApi.new
marketplace_id = 'marketplace_id_example' # String | The response includes only the invoices that match the specified marketplace.
opts = { 
  transaction_identifier_name: 'transaction_identifier_name_example', # String | The name of the transaction identifier filter. If you provide a value for this field, you must also provide a value for the `transactionIdentifierId` field.Use the `getInvoicesAttributes` operation to check `transactionIdentifierName` options.
  page_size: 56, # Integer | The maximum number of invoices you want to return in a single call.  Minimum: 1  Maximum: 200
  date_end: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | The latest invoice creation date for invoices that you want to include in the response. Dates are in [ISO 8601](https://developer-docs.amazon.com/sp-api/docs/iso-8601) date-time format. The default is the current date-time.
  transaction_type: 'transaction_type_example', # String | The marketplace-specific classification of the transaction type for which the invoice was created. Use the `getInvoicesAttributes` operation to check `transactionType` options.
  transaction_identifier_id: 'transaction_identifier_id_example', # String | The ID of the transaction identifier filter. If you provide a value for this field, you must also provide a value for the `transactionIdentifierName` field.
  date_start: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | The earliest invoice creation date for invoices that you want to include in the response. Dates are in [ISO 8601](https://developer-docs.amazon.com/sp-api/docs/iso-8601) date-time format. The default is 24 hours prior to the time of the request.
  series: 'series_example', # String | Return invoices with the specified series number.
  next_token: 'next_token_example', # String | The response includes `nextToken` when the number of results exceeds the specified `pageSize` value. To get the next page of results, call the operation with this token and include the same arguments as the call that produced the token. To get a complete list, call this operation until `nextToken` is null. Note that this operation can return empty pages.
  sort_order: 'sort_order_example', # String | Sort the invoices in the response in ascending or descending order.
  invoice_type: 'invoice_type_example', # String | The marketplace-specific classification of the invoice type. Use the `getInvoicesAttributes` operation to check `invoiceType` options.
  statuses: ['statuses_example'], # Array<String> | A list of statuses that you can use to filter invoices. Use the `getInvoicesAttributes` operation to check invoice status options.  Min count: 1
  external_invoice_id: 'external_invoice_id_example', # String | Return invoices that match this external ID. This is typically the Government Invoice ID.
  sort_by: 'sort_by_example' # String | The attribute by which you want to sort the invoices in the response.
}

begin
  result = api_instance.get_invoices(marketplace_id, opts)
  p result
rescue AmzSpApi::InvoicesApiModel::ApiError => e
  puts "Exception when calling InvoicesApi->get_invoices: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **marketplace_id** | **String**| The response includes only the invoices that match the specified marketplace. | 
 **transaction_identifier_name** | **String**| The name of the transaction identifier filter. If you provide a value for this field, you must also provide a value for the &#x60;transactionIdentifierId&#x60; field.Use the &#x60;getInvoicesAttributes&#x60; operation to check &#x60;transactionIdentifierName&#x60; options. | [optional] 
 **page_size** | **Integer**| The maximum number of invoices you want to return in a single call.  Minimum: 1  Maximum: 200 | [optional] 
 **date_end** | **DateTime**| The latest invoice creation date for invoices that you want to include in the response. Dates are in [ISO 8601](https://developer-docs.amazon.com/sp-api/docs/iso-8601) date-time format. The default is the current date-time. | [optional] 
 **transaction_type** | **String**| The marketplace-specific classification of the transaction type for which the invoice was created. Use the &#x60;getInvoicesAttributes&#x60; operation to check &#x60;transactionType&#x60; options. | [optional] 
 **transaction_identifier_id** | **String**| The ID of the transaction identifier filter. If you provide a value for this field, you must also provide a value for the &#x60;transactionIdentifierName&#x60; field. | [optional] 
 **date_start** | **DateTime**| The earliest invoice creation date for invoices that you want to include in the response. Dates are in [ISO 8601](https://developer-docs.amazon.com/sp-api/docs/iso-8601) date-time format. The default is 24 hours prior to the time of the request. | [optional] 
 **series** | **String**| Return invoices with the specified series number. | [optional] 
 **next_token** | **String**| The response includes &#x60;nextToken&#x60; when the number of results exceeds the specified &#x60;pageSize&#x60; value. To get the next page of results, call the operation with this token and include the same arguments as the call that produced the token. To get a complete list, call this operation until &#x60;nextToken&#x60; is null. Note that this operation can return empty pages. | [optional] 
 **sort_order** | **String**| Sort the invoices in the response in ascending or descending order. | [optional] 
 **invoice_type** | **String**| The marketplace-specific classification of the invoice type. Use the &#x60;getInvoicesAttributes&#x60; operation to check &#x60;invoiceType&#x60; options. | [optional] 
 **statuses** | [**Array&lt;String&gt;**](String.md)| A list of statuses that you can use to filter invoices. Use the &#x60;getInvoicesAttributes&#x60; operation to check invoice status options.  Min count: 1 | [optional] 
 **external_invoice_id** | **String**| Return invoices that match this external ID. This is typically the Government Invoice ID. | [optional] 
 **sort_by** | **String**| The attribute by which you want to sort the invoices in the response. | [optional] 

### Return type

[**GetInvoicesResponse**](GetInvoicesResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_invoices_attributes**
> GetInvoicesAttributesResponse get_invoices_attributes(marketplace_id)



Returns marketplace-dependent schemas and their respective set of possible values.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 1 | 1 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The preceding table indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may have higher rate and burst values than those shown here. For more information, refer to [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'invoices-api-model'

api_instance = AmzSpApi::InvoicesApiModel::InvoicesApi.new
marketplace_id = 'marketplace_id_example' # String | The marketplace identifier.


begin
  result = api_instance.get_invoices_attributes(marketplace_id)
  p result
rescue AmzSpApi::InvoicesApiModel::ApiError => e
  puts "Exception when calling InvoicesApi->get_invoices_attributes: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **marketplace_id** | **String**| The marketplace identifier. | 

### Return type

[**GetInvoicesAttributesResponse**](GetInvoicesAttributesResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_invoices_document**
> GetInvoicesDocumentResponse get_invoices_document(invoices_document_id)



Returns the invoice document's ID and URL. Use the URL to download the ZIP file, which contains the invoices from the corresponding `createInvoicesExport` request.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 0.0167 | 1 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The preceding table indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may have higher rate and burst values than those shown here. For more information, refer to [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'invoices-api-model'

api_instance = AmzSpApi::InvoicesApiModel::InvoicesApi.new
invoices_document_id = 'invoices_document_id_example' # String | The export document identifier.


begin
  result = api_instance.get_invoices_document(invoices_document_id)
  p result
rescue AmzSpApi::InvoicesApiModel::ApiError => e
  puts "Exception when calling InvoicesApi->get_invoices_document: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **invoices_document_id** | **String**| The export document identifier. | 

### Return type

[**GetInvoicesDocumentResponse**](GetInvoicesDocumentResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_invoices_export**
> GetInvoicesExportResponse get_invoices_export(export_id)



Returns invoice export details (including the `exportDocumentId`, if available) for the export that you specify.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 2 | 15 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The preceding table indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may have higher rate and burst values than those shown here. For more information, refer to [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'invoices-api-model'

api_instance = AmzSpApi::InvoicesApiModel::InvoicesApi.new
export_id = 'export_id_example' # String | The unique identifier for the export.


begin
  result = api_instance.get_invoices_export(export_id)
  p result
rescue AmzSpApi::InvoicesApiModel::ApiError => e
  puts "Exception when calling InvoicesApi->get_invoices_export: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **export_id** | **String**| The unique identifier for the export. | 

### Return type

[**GetInvoicesExportResponse**](GetInvoicesExportResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_invoices_exports**
> GetInvoicesExportsResponse get_invoices_exports(marketplace_id, opts)



Returns invoice exports details for exports that match the filters that you specify.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 0.1 | 20 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The preceding table indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may have higher rate and burst values than those shown here. For more information, refer to [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'invoices-api-model'

api_instance = AmzSpApi::InvoicesApiModel::InvoicesApi.new
marketplace_id = 'marketplace_id_example' # String | The returned exports match the specified marketplace.
opts = { 
  date_start: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | The earliest export creation date and time for exports that you want to include in the response. Values are in [ISO 8601](https://developer-docs.amazon.com/sp-api/docs/iso-8601) date-time format. The default is 30 days ago.
  next_token: 'next_token_example', # String | The response includes `nextToken` when the number of results exceeds the specified `pageSize` value. To get the next page of results, call the operation with this token and include the same arguments as the call that produced the token. To get a complete list, call this operation until `nextToken` is null. Note that this operation can return empty pages.
  page_size: 56, # Integer | The maximum number of invoices to return in a single call.  Minimum: 1  Maximum: 100
  date_end: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | The latest export creation date and time for exports that you want to include in the response. Values are in [ISO 8601](https://developer-docs.amazon.com/sp-api/docs/iso-8601) date-time format. The default value is the time of the request.
  status: 'status_example' # String | Return exports matching the status specified. 
}

begin
  result = api_instance.get_invoices_exports(marketplace_id, opts)
  p result
rescue AmzSpApi::InvoicesApiModel::ApiError => e
  puts "Exception when calling InvoicesApi->get_invoices_exports: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **marketplace_id** | **String**| The returned exports match the specified marketplace. | 
 **date_start** | **DateTime**| The earliest export creation date and time for exports that you want to include in the response. Values are in [ISO 8601](https://developer-docs.amazon.com/sp-api/docs/iso-8601) date-time format. The default is 30 days ago. | [optional] 
 **next_token** | **String**| The response includes &#x60;nextToken&#x60; when the number of results exceeds the specified &#x60;pageSize&#x60; value. To get the next page of results, call the operation with this token and include the same arguments as the call that produced the token. To get a complete list, call this operation until &#x60;nextToken&#x60; is null. Note that this operation can return empty pages. | [optional] 
 **page_size** | **Integer**| The maximum number of invoices to return in a single call.  Minimum: 1  Maximum: 100 | [optional] 
 **date_end** | **DateTime**| The latest export creation date and time for exports that you want to include in the response. Values are in [ISO 8601](https://developer-docs.amazon.com/sp-api/docs/iso-8601) date-time format. The default value is the time of the request. | [optional] 
 **status** | **String**| Return exports matching the status specified.  | [optional] 

### Return type

[**GetInvoicesExportsResponse**](GetInvoicesExportsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



