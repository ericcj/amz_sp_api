# AmzSpApi::VendorDirectFulfillmentTransactionsApiModel::VendorTransactionApi

All URIs are relative to *https://sellingpartnerapi-na.amazon.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_transaction_status**](VendorTransactionApi.md#get_transaction_status) | **GET** /vendor/directFulfillment/transactions/v1/transactions/{transactionId} | 

# **get_transaction_status**
> GetTransactionResponse get_transaction_status(transaction_id)



Returns the status of the transaction indicated by the specified transactionId.  **Usage Plans:**  | Plan type | Rate (requests per second) | Burst | | ---- | ---- | ---- | |Default| 10 | 10 | |Selling partner specific| Variable | Variable |  The x-amzn-RateLimit-Limit response header returns the usage plan rate limits that were applied to the requested operation. Rate limits for some selling partners will vary from the default rate and burst shown in the table above. For more information, see \"Usage Plans and Rate Limits\" in the Selling Partner API documentation.

### Example
```ruby
# load the gem
require 'vendor-direct-fulfillment-transactions-api-model'

api_instance = AmzSpApi::VendorDirectFulfillmentTransactionsApiModel::VendorTransactionApi.new
transaction_id = 'transaction_id_example' # String | Previously returned in the response to the POST request of a specific transaction.


begin
  result = api_instance.get_transaction_status(transaction_id)
  p result
rescue AmzSpApi::VendorDirectFulfillmentTransactionsApiModel::ApiError => e
  puts "Exception when calling VendorTransactionApi->get_transaction_status: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **transaction_id** | **String**| Previously returned in the response to the POST request of a specific transaction. | 

### Return type

[**GetTransactionResponse**](GetTransactionResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



