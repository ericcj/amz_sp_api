# AmzSpApi::VendorInvoicesApiModel::VendorPaymentsApi

All URIs are relative to *https://sellingpartnerapi-na.amazon.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**submit_invoices**](VendorPaymentsApi.md#submit_invoices) | **POST** /vendor/payments/v1/invoices | 

# **submit_invoices**
> SubmitInvoicesResponse submit_invoices(body)



Submit new invoices to Amazon.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 10 | 10 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values than those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'vendor-invoices-api-model'

api_instance = AmzSpApi::VendorInvoicesApiModel::VendorPaymentsApi.new
body = AmzSpApi::VendorInvoicesApiModel::SubmitInvoicesRequest.new # SubmitInvoicesRequest | The request body containing the invoice data to submit.


begin
  result = api_instance.submit_invoices(body)
  p result
rescue AmzSpApi::VendorInvoicesApiModel::ApiError => e
  puts "Exception when calling VendorPaymentsApi->submit_invoices: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SubmitInvoicesRequest**](SubmitInvoicesRequest.md)| The request body containing the invoice data to submit. | 

### Return type

[**SubmitInvoicesResponse**](SubmitInvoicesResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



