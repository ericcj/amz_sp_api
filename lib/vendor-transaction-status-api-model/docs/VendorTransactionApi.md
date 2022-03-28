# AmzSpApi::VendorTransactionStatusApiModel::VendorTransactionApi

All URIs are relative to *https://sellingpartnerapi-na.amazon.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_transaction**](VendorTransactionApi.md#get_transaction) | **GET** /vendor/transactions/v1/transactions/{transactionId} | 

# **get_transaction**
> GetTransactionResponse get_transaction(transaction_id)



Returns the status of the transaction that you specify.  **Usage Plans:**  | Plan type | Rate (requests per second) | Burst | | ---- | ---- | ---- | |Default| 10 | 10 | |Selling partner specific| Variable | Variable |  The x-amzn-RateLimit-Limit response header returns the usage plan rate limits that were applied to the requested operation. Rate limits for some selling partners will vary from the default rate and burst shown in the table above. For more information, see \"Usage Plans and Rate Limits\" in the Selling Partner API documentation.

### Example
```ruby
# load the gem
require 'vendor-transaction-status-api-model'

api_instance = AmzSpApi::VendorTransactionStatusApiModel::VendorTransactionApi.new
transaction_id = 'transaction_id_example' # String | The GUID provided by Amazon in the 'transactionId' field in response to the post request of a specific transaction.


begin
  result = api_instance.get_transaction(transaction_id)
  p result
rescue AmzSpApi::VendorTransactionStatusApiModel::ApiError => e
  puts "Exception when calling VendorTransactionApi->get_transaction: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **transaction_id** | **String**| The GUID provided by Amazon in the &#x27;transactionId&#x27; field in response to the post request of a specific transaction. | 

### Return type

[**GetTransactionResponse**](GetTransactionResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



