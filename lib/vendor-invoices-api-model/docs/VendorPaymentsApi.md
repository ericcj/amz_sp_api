# AmzSpApi::VendorInvoicesApiModel::VendorPaymentsApi

All URIs are relative to *https://sellingpartnerapi-na.amazon.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**submit_invoices**](VendorPaymentsApi.md#submit_invoices) | **POST** /vendor/payments/v1/invoices | 

# **submit_invoices**
> SubmitInvoicesResponse submit_invoices(body)



Submit new invoices to Amazon.  **Usage Plans:**  | Plan type | Rate (requests per second) | Burst | | ---- | ---- | ---- | |Default| 10 | 10 | |Selling partner specific| Variable | Variable |  The x-amzn-RateLimit-Limit response header returns the usage plan rate limits that were applied to the requested operation. Rate limits for some selling partners will vary from the default rate and burst shown in the table above. For more information, see \"Usage Plans and Rate Limits\" in the Selling Partner API documentation.

### Example
```ruby
# load the gem
require 'vendor-invoices-api-model'

api_instance = AmzSpApi::VendorInvoicesApiModel::VendorPaymentsApi.new
body = AmzSpApi::VendorInvoicesApiModel::SubmitInvoicesRequest.new # SubmitInvoicesRequest | 


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
 **body** | [**SubmitInvoicesRequest**](SubmitInvoicesRequest.md)|  | 

### Return type

[**SubmitInvoicesResponse**](SubmitInvoicesResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



