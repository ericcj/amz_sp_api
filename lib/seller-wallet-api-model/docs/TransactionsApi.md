# AmzSpApi::SellerWalletApiModel::TransactionsApi

All URIs are relative to *https://sellingpartnerapi-na.amazon.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_transaction**](TransactionsApi.md#create_transaction) | **POST** /finances/transfers/wallet/2024-03-01/transactions | Create a transaction request from Amazon SW account to another customer provided account
[**get_transaction**](TransactionsApi.md#get_transaction) | **GET** /finances/transfers/wallet/2024-03-01/transactions/{transactionId} | Find particular Amazon SW account transaction by Amazon transaction identifier
[**list_account_transactions**](TransactionsApi.md#list_account_transactions) | **GET** /finances/transfers/wallet/2024-03-01/transactions | The API will return all the transactions for a given Amazon SW account sorted by the transaction request date

# **create_transaction**
> CreateTransactionResponse create_transaction(bodydest_account_digital_signatureamount_digital_signaturemarketplace_id)

Create a transaction request from Amazon SW account to another customer provided account

Create a transaction request from a Seller Wallet account to another customer-provided account.

### Example
```ruby
# load the gem
require 'seller-wallet-api-model'

api_instance = AmzSpApi::SellerWalletApiModel::TransactionsApi.new
body = AmzSpApi::SellerWalletApiModel::TransactionInitiationRequest.new # TransactionInitiationRequest | Defines the actual payload of the request
dest_account_digital_signature = 'dest_account_digital_signature_example' # String | Digital signature for the destination bank account details. For more information, refer to [Third-Party Provider Signature Guidance](https://developer-docs.amazon.com/sp-api/docs/tpp-registration-signature-guidance).
amount_digital_signature = 'amount_digital_signature_example' # String | Digital signature for the source currency transaction amount. Sign in the order of the request definitions. You can omit empty or optional fields. For more information, refer to [Third-Party Provider Signature Guidance](https://developer-docs.amazon.com/sp-api/docs/tpp-registration-signature-guidance).
marketplace_id = 'marketplace_id_example' # String | The marketplace for which items are returned. The marketplace ID is the globally unique identifier of a marketplace. To find the ID for your marketplace, refer to [Marketplace IDs](https://developer-docs.amazon.com/sp-api/docs/marketplace-ids).


begin
  #Create a transaction request from Amazon SW account to another customer provided account
  result = api_instance.create_transaction(bodydest_account_digital_signatureamount_digital_signaturemarketplace_id)
  p result
rescue AmzSpApi::SellerWalletApiModel::ApiError => e
  puts "Exception when calling TransactionsApi->create_transaction: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**TransactionInitiationRequest**](TransactionInitiationRequest.md)| Defines the actual payload of the request | 
 **dest_account_digital_signature** | **String**| Digital signature for the destination bank account details. For more information, refer to [Third-Party Provider Signature Guidance](https://developer-docs.amazon.com/sp-api/docs/tpp-registration-signature-guidance). | 
 **amount_digital_signature** | **String**| Digital signature for the source currency transaction amount. Sign in the order of the request definitions. You can omit empty or optional fields. For more information, refer to [Third-Party Provider Signature Guidance](https://developer-docs.amazon.com/sp-api/docs/tpp-registration-signature-guidance). | 
 **marketplace_id** | **String**| The marketplace for which items are returned. The marketplace ID is the globally unique identifier of a marketplace. To find the ID for your marketplace, refer to [Marketplace IDs](https://developer-docs.amazon.com/sp-api/docs/marketplace-ids). | 

### Return type

[**CreateTransactionResponse**](CreateTransactionResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_transaction**
> Transaction get_transaction(transaction_id, marketplace_id)

Find particular Amazon SW account transaction by Amazon transaction identifier

Returns a transaction

### Example
```ruby
# load the gem
require 'seller-wallet-api-model'

api_instance = AmzSpApi::SellerWalletApiModel::TransactionsApi.new
transaction_id = 'transaction_id_example' # String | ID of the Amazon SW transaction
marketplace_id = 'marketplace_id_example' # String | The marketplace for which items are returned. The marketplace ID is the globally unique identifier of a marketplace. To find the ID for your marketplace, refer to [Marketplace IDs](https://developer-docs.amazon.com/sp-api/docs/marketplace-ids).


begin
  #Find particular Amazon SW account transaction by Amazon transaction identifier
  result = api_instance.get_transaction(transaction_id, marketplace_id)
  p result
rescue AmzSpApi::SellerWalletApiModel::ApiError => e
  puts "Exception when calling TransactionsApi->get_transaction: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **transaction_id** | **String**| ID of the Amazon SW transaction | 
 **marketplace_id** | **String**| The marketplace for which items are returned. The marketplace ID is the globally unique identifier of a marketplace. To find the ID for your marketplace, refer to [Marketplace IDs](https://developer-docs.amazon.com/sp-api/docs/marketplace-ids). | 

### Return type

[**Transaction**](Transaction.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_account_transactions**
> TransactionListing list_account_transactions(account_id, marketplace_id, opts)

The API will return all the transactions for a given Amazon SW account sorted by the transaction request date

Retrieve a list of transactions for a given Seller Wallet bank account.

### Example
```ruby
# load the gem
require 'seller-wallet-api-model'

api_instance = AmzSpApi::SellerWalletApiModel::TransactionsApi.new
account_id = 'account_id_example' # String | ID of the Amazon SW account
marketplace_id = 'marketplace_id_example' # String | The marketplace for which items are returned. The marketplace ID is the globally unique identifier of a marketplace. To find the ID for your marketplace, refer to [Marketplace IDs](https://developer-docs.amazon.com/sp-api/docs/marketplace-ids).
opts = { 
  next_page_token: 'next_page_token_example' # String | Pagination token to retrieve a specific page of results.
}

begin
  #The API will return all the transactions for a given Amazon SW account sorted by the transaction request date
  result = api_instance.list_account_transactions(account_id, marketplace_id, opts)
  p result
rescue AmzSpApi::SellerWalletApiModel::ApiError => e
  puts "Exception when calling TransactionsApi->list_account_transactions: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| ID of the Amazon SW account | 
 **marketplace_id** | **String**| The marketplace for which items are returned. The marketplace ID is the globally unique identifier of a marketplace. To find the ID for your marketplace, refer to [Marketplace IDs](https://developer-docs.amazon.com/sp-api/docs/marketplace-ids). | 
 **next_page_token** | **String**| Pagination token to retrieve a specific page of results. | [optional] 

### Return type

[**TransactionListing**](TransactionListing.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



