# AmzSpApi::ListingsItemsApiModel::ListingsApi

All URIs are relative to *https://sellingpartnerapi-na.amazon.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_listings_item**](ListingsApi.md#delete_listings_item) | **DELETE** /listings/2021-08-01/items/{sellerId}/{sku} | 
[**get_listings_item**](ListingsApi.md#get_listings_item) | **GET** /listings/2021-08-01/items/{sellerId}/{sku} | 
[**patch_listings_item**](ListingsApi.md#patch_listings_item) | **PATCH** /listings/2021-08-01/items/{sellerId}/{sku} | 
[**put_listings_item**](ListingsApi.md#put_listings_item) | **PUT** /listings/2021-08-01/items/{sellerId}/{sku} | 

# **delete_listings_item**
> ListingsItemSubmissionResponse delete_listings_item(seller_id, sku, marketplace_ids, opts)



Delete a listings item for a selling partner.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 5 | 10 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values than those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](doc:usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'listings-items-api-model'

api_instance = AmzSpApi::ListingsItemsApiModel::ListingsApi.new
seller_id = 'seller_id_example' # String | A selling partner identifier, such as a merchant account or vendor code.
sku = 'sku_example' # String | A selling partner provided identifier for an Amazon listing.
marketplace_ids = ['marketplace_ids_example'] # Array<String> | A comma-delimited list of Amazon marketplace identifiers for the request.
opts = { 
  issue_locale: 'issue_locale_example' # String | A locale for localization of issues. When not provided, the default language code of the first marketplace is used. Examples: \"en_US\", \"fr_CA\", \"fr_FR\". Localized messages default to \"en_US\" when a localization is not available in the specified locale.
}

begin
  result = api_instance.delete_listings_item(seller_id, sku, marketplace_ids, opts)
  p result
rescue AmzSpApi::ListingsItemsApiModel::ApiError => e
  puts "Exception when calling ListingsApi->delete_listings_item: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **seller_id** | **String**| A selling partner identifier, such as a merchant account or vendor code. | 
 **sku** | **String**| A selling partner provided identifier for an Amazon listing. | 
 **marketplace_ids** | [**Array&lt;String&gt;**](String.md)| A comma-delimited list of Amazon marketplace identifiers for the request. | 
 **issue_locale** | **String**| A locale for localization of issues. When not provided, the default language code of the first marketplace is used. Examples: \&quot;en_US\&quot;, \&quot;fr_CA\&quot;, \&quot;fr_FR\&quot;. Localized messages default to \&quot;en_US\&quot; when a localization is not available in the specified locale. | [optional] 

### Return type

[**ListingsItemSubmissionResponse**](ListingsItemSubmissionResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_listings_item**
> Item get_listings_item(seller_id, sku, marketplace_ids, opts)



Returns details about a listings item for a selling partner.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 5 | 10 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values then those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](doc:usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'listings-items-api-model'

api_instance = AmzSpApi::ListingsItemsApiModel::ListingsApi.new
seller_id = 'seller_id_example' # String | A selling partner identifier, such as a merchant account or vendor code.
sku = 'sku_example' # String | A selling partner provided identifier for an Amazon listing.
marketplace_ids = ['marketplace_ids_example'] # Array<String> | A comma-delimited list of Amazon marketplace identifiers for the request.
opts = { 
  issue_locale: 'issue_locale_example', # String | A locale for localization of issues. When not provided, the default language code of the first marketplace is used. Examples: \"en_US\", \"fr_CA\", \"fr_FR\". Localized messages default to \"en_US\" when a localization is not available in the specified locale.
  included_data: ['included_data_example'] # Array<String> | A comma-delimited list of data sets to include in the response. Default: summaries.
}

begin
  result = api_instance.get_listings_item(seller_id, sku, marketplace_ids, opts)
  p result
rescue AmzSpApi::ListingsItemsApiModel::ApiError => e
  puts "Exception when calling ListingsApi->get_listings_item: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **seller_id** | **String**| A selling partner identifier, such as a merchant account or vendor code. | 
 **sku** | **String**| A selling partner provided identifier for an Amazon listing. | 
 **marketplace_ids** | [**Array&lt;String&gt;**](String.md)| A comma-delimited list of Amazon marketplace identifiers for the request. | 
 **issue_locale** | **String**| A locale for localization of issues. When not provided, the default language code of the first marketplace is used. Examples: \&quot;en_US\&quot;, \&quot;fr_CA\&quot;, \&quot;fr_FR\&quot;. Localized messages default to \&quot;en_US\&quot; when a localization is not available in the specified locale. | [optional] 
 **included_data** | [**Array&lt;String&gt;**](String.md)| A comma-delimited list of data sets to include in the response. Default: summaries. | [optional] 

### Return type

[**Item**](Item.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **patch_listings_item**
> ListingsItemSubmissionResponse patch_listings_item(bodymarketplace_idsseller_idsku, opts)



Partially update (patch) a listings item for a selling partner. Only top-level listings item attributes can be patched. Patching nested attributes is not supported.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 5 | 10 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values then those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](doc:usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'listings-items-api-model'

api_instance = AmzSpApi::ListingsItemsApiModel::ListingsApi.new
body = AmzSpApi::ListingsItemsApiModel::ListingsItemPatchRequest.new # ListingsItemPatchRequest | The request body schema for the patchListingsItem operation.
marketplace_ids = ['marketplace_ids_example'] # Array<String> | A comma-delimited list of Amazon marketplace identifiers for the request.
seller_id = 'seller_id_example' # String | A selling partner identifier, such as a merchant account or vendor code.
sku = 'sku_example' # String | A selling partner provided identifier for an Amazon listing.
opts = { 
  issue_locale: 'issue_locale_example' # String | A locale for localization of issues. When not provided, the default language code of the first marketplace is used. Examples: \"en_US\", \"fr_CA\", \"fr_FR\". Localized messages default to \"en_US\" when a localization is not available in the specified locale.
}

begin
  result = api_instance.patch_listings_item(bodymarketplace_idsseller_idsku, opts)
  p result
rescue AmzSpApi::ListingsItemsApiModel::ApiError => e
  puts "Exception when calling ListingsApi->patch_listings_item: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**ListingsItemPatchRequest**](ListingsItemPatchRequest.md)| The request body schema for the patchListingsItem operation. | 
 **marketplace_ids** | [**Array&lt;String&gt;**](String.md)| A comma-delimited list of Amazon marketplace identifiers for the request. | 
 **seller_id** | **String**| A selling partner identifier, such as a merchant account or vendor code. | 
 **sku** | **String**| A selling partner provided identifier for an Amazon listing. | 
 **issue_locale** | **String**| A locale for localization of issues. When not provided, the default language code of the first marketplace is used. Examples: \&quot;en_US\&quot;, \&quot;fr_CA\&quot;, \&quot;fr_FR\&quot;. Localized messages default to \&quot;en_US\&quot; when a localization is not available in the specified locale. | [optional] 

### Return type

[**ListingsItemSubmissionResponse**](ListingsItemSubmissionResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_listings_item**
> ListingsItemSubmissionResponse put_listings_item(bodymarketplace_idsseller_idsku, opts)



Creates a new or fully-updates an existing listings item for a selling partner.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 5 | 10 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values then those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](doc:usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'listings-items-api-model'

api_instance = AmzSpApi::ListingsItemsApiModel::ListingsApi.new
body = AmzSpApi::ListingsItemsApiModel::ListingsItemPutRequest.new # ListingsItemPutRequest | The request body schema for the putListingsItem operation.
marketplace_ids = ['marketplace_ids_example'] # Array<String> | A comma-delimited list of Amazon marketplace identifiers for the request.
seller_id = 'seller_id_example' # String | A selling partner identifier, such as a merchant account or vendor code.
sku = 'sku_example' # String | A selling partner provided identifier for an Amazon listing.
opts = { 
  issue_locale: 'issue_locale_example' # String | A locale for localization of issues. When not provided, the default language code of the first marketplace is used. Examples: \"en_US\", \"fr_CA\", \"fr_FR\". Localized messages default to \"en_US\" when a localization is not available in the specified locale.
}

begin
  result = api_instance.put_listings_item(bodymarketplace_idsseller_idsku, opts)
  p result
rescue AmzSpApi::ListingsItemsApiModel::ApiError => e
  puts "Exception when calling ListingsApi->put_listings_item: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**ListingsItemPutRequest**](ListingsItemPutRequest.md)| The request body schema for the putListingsItem operation. | 
 **marketplace_ids** | [**Array&lt;String&gt;**](String.md)| A comma-delimited list of Amazon marketplace identifiers for the request. | 
 **seller_id** | **String**| A selling partner identifier, such as a merchant account or vendor code. | 
 **sku** | **String**| A selling partner provided identifier for an Amazon listing. | 
 **issue_locale** | **String**| A locale for localization of issues. When not provided, the default language code of the first marketplace is used. Examples: \&quot;en_US\&quot;, \&quot;fr_CA\&quot;, \&quot;fr_FR\&quot;. Localized messages default to \&quot;en_US\&quot; when a localization is not available in the specified locale. | [optional] 

### Return type

[**ListingsItemSubmissionResponse**](ListingsItemSubmissionResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



