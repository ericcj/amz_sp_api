# AmzSpApi::SellerWalletApiModel::TransferScheduleApi

All URIs are relative to *https://sellingpartnerapi-na.amazon.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_transfer_schedule**](TransferScheduleApi.md#create_transfer_schedule) | **POST** /finances/transfers/wallet/2024-03-01/transferSchedules | Create a transfer schedule request from Amazon SW account to another customer provided account
[**delete_schedule_transaction**](TransferScheduleApi.md#delete_schedule_transaction) | **DELETE** /finances/transfers/wallet/2024-03-01/transferSchedules/{transferScheduleId} | Delete a transaction request that is scheduled from Amazon Seller Wallet account to another customer-provided account
[**get_transfer_schedule**](TransferScheduleApi.md#get_transfer_schedule) | **GET** /finances/transfers/wallet/2024-03-01/transferSchedules/{transferScheduleId} | Find particular Amazon Seller Wallet account transfer schedule by Amazon transfer schedule identifier
[**list_transfer_schedules**](TransferScheduleApi.md#list_transfer_schedules) | **GET** /finances/transfers/wallet/2024-03-01/transferSchedules | The API will return all the transfer schedules for a given Amazon SW account
[**update_transfer_schedule**](TransferScheduleApi.md#update_transfer_schedule) | **PUT** /finances/transfers/wallet/2024-03-01/transferSchedules | Update a transfer schedule information. Only fields (i.e; transferScheduleInformation, paymentPreference, transferScheduleStatus) in the request body can be updated.

# **create_transfer_schedule**
> TransferSchedule create_transfer_schedule(bodydest_account_digital_signatureamount_digital_signaturemarketplace_id)

Create a transfer schedule request from Amazon SW account to another customer provided account

Create a transfer schedule request from a Seller Wallet account to another customer-provided account.

### Example
```ruby
# load the gem
require 'seller-wallet-api-model'

api_instance = AmzSpApi::SellerWalletApiModel::TransferScheduleApi.new
body = AmzSpApi::SellerWalletApiModel::TransferScheduleRequest.new # TransferScheduleRequest | Defines the actual payload of the request
dest_account_digital_signature = 'dest_account_digital_signature_example' # String | Digital signature for the destination bank account details.
amount_digital_signature = 'amount_digital_signature_example' # String | Digital signature for the source currency transaction amount.
marketplace_id = 'marketplace_id_example' # String | The marketplace for which items are returned. The marketplace ID is the globally unique identifier of a marketplace. To find the ID for your marketplace, refer to [Marketplace IDs](https://developer-docs.amazon.com/sp-api/docs/marketplace-ids).


begin
  #Create a transfer schedule request from Amazon SW account to another customer provided account
  result = api_instance.create_transfer_schedule(bodydest_account_digital_signatureamount_digital_signaturemarketplace_id)
  p result
rescue AmzSpApi::SellerWalletApiModel::ApiError => e
  puts "Exception when calling TransferScheduleApi->create_transfer_schedule: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**TransferScheduleRequest**](TransferScheduleRequest.md)| Defines the actual payload of the request | 
 **dest_account_digital_signature** | **String**| Digital signature for the destination bank account details. | 
 **amount_digital_signature** | **String**| Digital signature for the source currency transaction amount. | 
 **marketplace_id** | **String**| The marketplace for which items are returned. The marketplace ID is the globally unique identifier of a marketplace. To find the ID for your marketplace, refer to [Marketplace IDs](https://developer-docs.amazon.com/sp-api/docs/marketplace-ids). | 

### Return type

[**TransferSchedule**](TransferSchedule.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_schedule_transaction**
> DeleteTransferSchedule delete_schedule_transaction(transfer_schedule_id, marketplace_id)

Delete a transaction request that is scheduled from Amazon Seller Wallet account to another customer-provided account

Delete a transaction request that is scheduled from Amazon Seller Wallet account to another customer-provided account.

### Example
```ruby
# load the gem
require 'seller-wallet-api-model'

api_instance = AmzSpApi::SellerWalletApiModel::TransferScheduleApi.new
transfer_schedule_id = 'transfer_schedule_id_example' # String | A unique reference ID for a scheduled transfer.
marketplace_id = 'marketplace_id_example' # String | The marketplace for which items are returned. The marketplace ID is the globally unique identifier of a marketplace. To find the ID for your marketplace, refer to [Marketplace IDs](https://developer-docs.amazon.com/sp-api/docs/marketplace-ids).


begin
  #Delete a transaction request that is scheduled from Amazon Seller Wallet account to another customer-provided account
  result = api_instance.delete_schedule_transaction(transfer_schedule_id, marketplace_id)
  p result
rescue AmzSpApi::SellerWalletApiModel::ApiError => e
  puts "Exception when calling TransferScheduleApi->delete_schedule_transaction: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **transfer_schedule_id** | **String**| A unique reference ID for a scheduled transfer. | 
 **marketplace_id** | **String**| The marketplace for which items are returned. The marketplace ID is the globally unique identifier of a marketplace. To find the ID for your marketplace, refer to [Marketplace IDs](https://developer-docs.amazon.com/sp-api/docs/marketplace-ids). | 

### Return type

[**DeleteTransferSchedule**](DeleteTransferSchedule.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_transfer_schedule**
> TransferSchedule get_transfer_schedule(transfer_schedule_id, marketplace_id)

Find particular Amazon Seller Wallet account transfer schedule by Amazon transfer schedule identifier

Find a particular Amazon Seller Wallet account transfer schedule.

### Example
```ruby
# load the gem
require 'seller-wallet-api-model'

api_instance = AmzSpApi::SellerWalletApiModel::TransferScheduleApi.new
transfer_schedule_id = 'transfer_schedule_id_example' # String | The schedule ID of the Amazon Seller Wallet transfer.
marketplace_id = 'marketplace_id_example' # String | The marketplace for which items are returned. The marketplace ID is the globally unique identifier of a marketplace. To find the ID for your marketplace, refer to [Marketplace IDs](https://developer-docs.amazon.com/sp-api/docs/marketplace-ids).


begin
  #Find particular Amazon Seller Wallet account transfer schedule by Amazon transfer schedule identifier
  result = api_instance.get_transfer_schedule(transfer_schedule_id, marketplace_id)
  p result
rescue AmzSpApi::SellerWalletApiModel::ApiError => e
  puts "Exception when calling TransferScheduleApi->get_transfer_schedule: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **transfer_schedule_id** | **String**| The schedule ID of the Amazon Seller Wallet transfer. | 
 **marketplace_id** | **String**| The marketplace for which items are returned. The marketplace ID is the globally unique identifier of a marketplace. To find the ID for your marketplace, refer to [Marketplace IDs](https://developer-docs.amazon.com/sp-api/docs/marketplace-ids). | 

### Return type

[**TransferSchedule**](TransferSchedule.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_transfer_schedules**
> TransferScheduleListing list_transfer_schedules(account_id, marketplace_id, opts)

The API will return all the transfer schedules for a given Amazon SW account

Retrieve transfer schedules of a Seller Wallet bank account.

### Example
```ruby
# load the gem
require 'seller-wallet-api-model'

api_instance = AmzSpApi::SellerWalletApiModel::TransferScheduleApi.new
account_id = 'account_id_example' # String | ID of the Amazon SW account
marketplace_id = 'marketplace_id_example' # String | The marketplace for which items are returned. The marketplace ID is the globally unique identifier of a marketplace. To find the ID for your marketplace, refer to [Marketplace IDs](https://developer-docs.amazon.com/sp-api/docs/marketplace-ids).
opts = { 
  next_page_token: 'next_page_token_example' # String | Pagination token to retrieve a specific page of results.
}

begin
  #The API will return all the transfer schedules for a given Amazon SW account
  result = api_instance.list_transfer_schedules(account_id, marketplace_id, opts)
  p result
rescue AmzSpApi::SellerWalletApiModel::ApiError => e
  puts "Exception when calling TransferScheduleApi->list_transfer_schedules: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| ID of the Amazon SW account | 
 **marketplace_id** | **String**| The marketplace for which items are returned. The marketplace ID is the globally unique identifier of a marketplace. To find the ID for your marketplace, refer to [Marketplace IDs](https://developer-docs.amazon.com/sp-api/docs/marketplace-ids). | 
 **next_page_token** | **String**| Pagination token to retrieve a specific page of results. | [optional] 

### Return type

[**TransferScheduleListing**](TransferScheduleListing.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_transfer_schedule**
> TransferSchedule update_transfer_schedule(bodydest_account_digital_signatureamount_digital_signaturemarketplace_id)

Update a transfer schedule information. Only fields (i.e; transferScheduleInformation, paymentPreference, transferScheduleStatus) in the request body can be updated.

Returns a transfer belonging to the updated scheduled transfer request

### Example
```ruby
# load the gem
require 'seller-wallet-api-model'

api_instance = AmzSpApi::SellerWalletApiModel::TransferScheduleApi.new
body = AmzSpApi::SellerWalletApiModel::TransferSchedule.new # TransferSchedule | Defines the actual payload of the scheduled transfer request that is to be updated. 
dest_account_digital_signature = 'dest_account_digital_signature_example' # String | Digital signature for the destination bank account details.
amount_digital_signature = 'amount_digital_signature_example' # String | Digital signature for the source currency transaction amount.
marketplace_id = 'marketplace_id_example' # String | The marketplace for which items are returned. The marketplace ID is the globally unique identifier of a marketplace. To find the ID for your marketplace, refer to [Marketplace IDs](https://developer-docs.amazon.com/sp-api/docs/marketplace-ids).


begin
  #Update a transfer schedule information. Only fields (i.e; transferScheduleInformation, paymentPreference, transferScheduleStatus) in the request body can be updated.
  result = api_instance.update_transfer_schedule(bodydest_account_digital_signatureamount_digital_signaturemarketplace_id)
  p result
rescue AmzSpApi::SellerWalletApiModel::ApiError => e
  puts "Exception when calling TransferScheduleApi->update_transfer_schedule: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**TransferSchedule**](TransferSchedule.md)| Defines the actual payload of the scheduled transfer request that is to be updated.  | 
 **dest_account_digital_signature** | **String**| Digital signature for the destination bank account details. | 
 **amount_digital_signature** | **String**| Digital signature for the source currency transaction amount. | 
 **marketplace_id** | **String**| The marketplace for which items are returned. The marketplace ID is the globally unique identifier of a marketplace. To find the ID for your marketplace, refer to [Marketplace IDs](https://developer-docs.amazon.com/sp-api/docs/marketplace-ids). | 

### Return type

[**TransferSchedule**](TransferSchedule.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



