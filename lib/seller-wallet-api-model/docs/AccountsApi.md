# AmzSpApi::SellerWalletApiModel::AccountsApi

All URIs are relative to *https://sellingpartnerapi-na.amazon.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_account**](AccountsApi.md#get_account) | **GET** /finances/transfers/wallet/2024-03-01/accounts/{accountId} | Find particular Amazon SW account by Amazon account identifier
[**list_account_balances**](AccountsApi.md#list_account_balances) | **GET** /finances/transfers/wallet/2024-03-01/accounts/{accountId}/balance | Find balance in particular Amazon SW account by Amazon account identifier
[**list_accounts**](AccountsApi.md#list_accounts) | **GET** /finances/transfers/wallet/2024-03-01/accounts | Get all Amazon SW accounts for the seller

# **get_account**
> BankAccount get_account(account_id, marketplace_id)

Find particular Amazon SW account by Amazon account identifier

Retrieve a Seller Wallet bank account by Amazon account identifier.

### Example
```ruby
# load the gem
require 'seller-wallet-api-model'

api_instance = AmzSpApi::SellerWalletApiModel::AccountsApi.new
account_id = 'account_id_example' # String | ID of the Amazon SW account
marketplace_id = 'marketplace_id_example' # String | The marketplace for which items are returned. The marketplace ID is the globally unique identifier of a marketplace. To find the ID for your marketplace, refer to [Marketplace IDs](https://developer-docs.amazon.com/sp-api/docs/marketplace-ids).


begin
  #Find particular Amazon SW account by Amazon account identifier
  result = api_instance.get_account(account_id, marketplace_id)
  p result
rescue AmzSpApi::SellerWalletApiModel::ApiError => e
  puts "Exception when calling AccountsApi->get_account: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| ID of the Amazon SW account | 
 **marketplace_id** | **String**| The marketplace for which items are returned. The marketplace ID is the globally unique identifier of a marketplace. To find the ID for your marketplace, refer to [Marketplace IDs](https://developer-docs.amazon.com/sp-api/docs/marketplace-ids). | 

### Return type

[**BankAccount**](BankAccount.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_account_balances**
> BalanceListing list_account_balances(account_id, marketplace_id)

Find balance in particular Amazon SW account by Amazon account identifier

Retrieve the balance in a given Seller Wallet bank account.

### Example
```ruby
# load the gem
require 'seller-wallet-api-model'

api_instance = AmzSpApi::SellerWalletApiModel::AccountsApi.new
account_id = 'account_id_example' # String | ID of the Amazon SW account
marketplace_id = 'marketplace_id_example' # String | The marketplace for which items are returned. The marketplace ID is the globally unique identifier of a marketplace. To find the ID for your marketplace, refer to [Marketplace IDs](https://developer-docs.amazon.com/sp-api/docs/marketplace-ids).


begin
  #Find balance in particular Amazon SW account by Amazon account identifier
  result = api_instance.list_account_balances(account_id, marketplace_id)
  p result
rescue AmzSpApi::SellerWalletApiModel::ApiError => e
  puts "Exception when calling AccountsApi->list_account_balances: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| ID of the Amazon SW account | 
 **marketplace_id** | **String**| The marketplace for which items are returned. The marketplace ID is the globally unique identifier of a marketplace. To find the ID for your marketplace, refer to [Marketplace IDs](https://developer-docs.amazon.com/sp-api/docs/marketplace-ids). | 

### Return type

[**BalanceListing**](BalanceListing.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_accounts**
> BankAccountListing list_accounts(marketplace_id)

Get all Amazon SW accounts for the seller

Get Seller Wallet accounts for a seller.

### Example
```ruby
# load the gem
require 'seller-wallet-api-model'

api_instance = AmzSpApi::SellerWalletApiModel::AccountsApi.new
marketplace_id = 'marketplace_id_example' # String | A marketplace identifier. Specifies the marketplace for which items are returned.


begin
  #Get all Amazon SW accounts for the seller
  result = api_instance.list_accounts(marketplace_id)
  p result
rescue AmzSpApi::SellerWalletApiModel::ApiError => e
  puts "Exception when calling AccountsApi->list_accounts: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **marketplace_id** | **String**| A marketplace identifier. Specifies the marketplace for which items are returned. | 

### Return type

[**BankAccountListing**](BankAccountListing.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



