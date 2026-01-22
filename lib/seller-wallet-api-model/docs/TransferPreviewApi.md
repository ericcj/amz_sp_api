# AmzSpApi::SellerWalletApiModel::TransferPreviewApi

All URIs are relative to *https://sellingpartnerapi-na.amazon.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_transfer_preview**](TransferPreviewApi.md#get_transfer_preview) | **GET** /finances/transfers/wallet/2024-03-01/transferPreview | Fetch potential fees that could be applied on a transaction on the basis of the source and destination country currency code

# **get_transfer_preview**
> TransferRatePreview get_transfer_preview(source_country_code, source_currency_code, destination_country_code, destination_currency_code, base_amount, marketplace_id)

Fetch potential fees that could be applied on a transaction on the basis of the source and destination country currency code

Returns list of potential fees on a transaction based on the source and destination country currency code

### Example
```ruby
# load the gem
require 'seller-wallet-api-model'

api_instance = AmzSpApi::SellerWalletApiModel::TransferPreviewApi.new
source_country_code = 'source_country_code_example' # String | Represents 2 character country code of source transaction account in ISO 3166 standard format.
source_currency_code = 'source_currency_code_example' # String | Represents 3 letter currency code in ISO 4217 standard format of the source transaction country.
destination_country_code = 'destination_country_code_example' # String | Represents 2 character country code of destination transaction account in ISO 3166 standard format.
destination_currency_code = 'destination_currency_code_example' # String | Represents 3 letter currency code in ISO 4217 standard format of the destination transaction country.
base_amount = AmzSpApi::SellerWalletApiModel::BigDecimal.new # BigDecimal | Represents the base transaction amount without any markup fees, rates that will be used to get the transfer preview.
marketplace_id = 'marketplace_id_example' # String | The marketplace for which items are returned. The marketplace ID is the globally unique identifier of a marketplace. To find the ID for your marketplace, refer to [Marketplace IDs](https://developer-docs.amazon.com/sp-api/docs/marketplace-ids).


begin
  #Fetch potential fees that could be applied on a transaction on the basis of the source and destination country currency code
  result = api_instance.get_transfer_preview(source_country_code, source_currency_code, destination_country_code, destination_currency_code, base_amount, marketplace_id)
  p result
rescue AmzSpApi::SellerWalletApiModel::ApiError => e
  puts "Exception when calling TransferPreviewApi->get_transfer_preview: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **source_country_code** | **String**| Represents 2 character country code of source transaction account in ISO 3166 standard format. | 
 **source_currency_code** | **String**| Represents 3 letter currency code in ISO 4217 standard format of the source transaction country. | 
 **destination_country_code** | **String**| Represents 2 character country code of destination transaction account in ISO 3166 standard format. | 
 **destination_currency_code** | **String**| Represents 3 letter currency code in ISO 4217 standard format of the destination transaction country. | 
 **base_amount** | **BigDecimal**| Represents the base transaction amount without any markup fees, rates that will be used to get the transfer preview. | 
 **marketplace_id** | **String**| The marketplace for which items are returned. The marketplace ID is the globally unique identifier of a marketplace. To find the ID for your marketplace, refer to [Marketplace IDs](https://developer-docs.amazon.com/sp-api/docs/marketplace-ids). | 

### Return type

[**TransferRatePreview**](TransferRatePreview.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



