# AmzSpApi::VendorDirectFulfillmentTransactionsApiModel::VendorTransactionApi

All URIs are relative to *https://sellingpartnerapi-na.amazon.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_transaction_status**](VendorTransactionApi.md#get_transaction_status) | **GET** /vendor/directFulfillment/transactions/2021-12-28/transactions/{transactionId} | 

# **get_transaction_status**
> TransactionStatus get_transaction_status(transaction_id)



Returns the status of the transaction indicated by the specified transactionId.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 10 | 10 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values then those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](doc:usage-plans-and-rate-limits-in-the-sp-api).

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

[**TransactionStatus**](TransactionStatus.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



