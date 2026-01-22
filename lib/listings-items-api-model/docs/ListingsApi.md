# AmzSpApi::ListingsItemsApiModel::ListingsApi

All URIs are relative to *https://sellingpartnerapi-na.amazon.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_listings_item**](ListingsApi.md#delete_listings_item) | **DELETE** /listings/2021-08-01/items/{sellerId}/{sku} | 
[**get_listings_item**](ListingsApi.md#get_listings_item) | **GET** /listings/2021-08-01/items/{sellerId}/{sku} | 
[**patch_listings_item**](ListingsApi.md#patch_listings_item) | **PATCH** /listings/2021-08-01/items/{sellerId}/{sku} | 
[**put_listings_item**](ListingsApi.md#put_listings_item) | **PUT** /listings/2021-08-01/items/{sellerId}/{sku} | 
[**search_listings_items**](ListingsApi.md#search_listings_items) | **GET** /listings/2021-08-01/items/{sellerId} | 

# **delete_listings_item**
> ListingsItemSubmissionResponse delete_listings_item(seller_id, sku, marketplace_ids, opts)



Delete a listings item for a selling partner.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 5 | 5 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The preceding table indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput can receive higher rate and burst values than those shown here. For more information, refer to [Usage Plans and Rate Limits](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api) in the Selling Partner API documentation.

### Example
```ruby
# load the gem
require 'listings-items-api-model'

api_instance = AmzSpApi::ListingsItemsApiModel::ListingsApi.new
seller_id = 'seller_id_example' # String | A selling partner identifier, such as a merchant account or vendor code.
sku = 'sku_example' # String | A selling partner provided identifier for an Amazon listing.
marketplace_ids = ['marketplace_ids_example'] # Array<String> | A comma-delimited list of Amazon marketplace identifiers for the request.
opts = { 
  issue_locale: 'issue_locale_example' # String | A locale for localization of issues. When not provided, the default language code of the first marketplace is used. Examples: `en_US`, `fr_CA`, `fr_FR`. Localized messages default to `en_US` when a localization is not available in the specified locale.
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
 **issue_locale** | **String**| A locale for localization of issues. When not provided, the default language code of the first marketplace is used. Examples: &#x60;en_US&#x60;, &#x60;fr_CA&#x60;, &#x60;fr_FR&#x60;. Localized messages default to &#x60;en_US&#x60; when a localization is not available in the specified locale. | [optional] 

### Return type

[**ListingsItemSubmissionResponse**](ListingsItemSubmissionResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_listings_item**
> Item get_listings_item(seller_id, sku, marketplace_ids, opts)



Returns details about a listings item for a selling partner.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 5 | 10 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The preceding table indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput can receive higher rate and burst values than those shown here. For more information, refer to [Usage Plans and Rate Limits](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api) in the Selling Partner API documentation.

### Example
```ruby
# load the gem
require 'listings-items-api-model'

api_instance = AmzSpApi::ListingsItemsApiModel::ListingsApi.new
seller_id = 'seller_id_example' # String | A selling partner identifier, such as a merchant account or vendor code.
sku = 'sku_example' # String | A selling partner provided identifier for an Amazon listing.
marketplace_ids = ['marketplace_ids_example'] # Array<String> | A comma-delimited list of Amazon marketplace identifiers for the request.
opts = { 
  issue_locale: 'issue_locale_example', # String | A locale for localization of issues. When not provided, the default language code of the first marketplace is used. Examples: `en_US`, `fr_CA`, `fr_FR`. Localized messages default to `en_US` when a localization is not available in the specified locale.
  included_data: ['included_data_example'] # Array<String> | A comma-delimited list of data sets to include in the response. Default: `summaries`.
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
 **issue_locale** | **String**| A locale for localization of issues. When not provided, the default language code of the first marketplace is used. Examples: &#x60;en_US&#x60;, &#x60;fr_CA&#x60;, &#x60;fr_FR&#x60;. Localized messages default to &#x60;en_US&#x60; when a localization is not available in the specified locale. | [optional] 
 **included_data** | [**Array&lt;String&gt;**](String.md)| A comma-delimited list of data sets to include in the response. Default: &#x60;summaries&#x60;. | [optional] 

### Return type

[**Item**](Item.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **patch_listings_item**
> ListingsItemSubmissionResponse patch_listings_item(bodymarketplace_idsseller_idsku, opts)



Partially update (patch) a listings item for a selling partner. Only top-level listings item attributes can be patched. Patching nested attributes is not supported.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 5 | 5 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The preceding table indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput can receive higher rate and burst values than those shown here. For more information, refer to [Usage Plans and Rate Limits](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api) in the Selling Partner API documentation.

### Example
```ruby
# load the gem
require 'listings-items-api-model'

api_instance = AmzSpApi::ListingsItemsApiModel::ListingsApi.new
body = AmzSpApi::ListingsItemsApiModel::ListingsItemPatchRequest.new # ListingsItemPatchRequest | The request body schema for the `patchListingsItem` operation.
marketplace_ids = ['marketplace_ids_example'] # Array<String> | A comma-delimited list of Amazon marketplace identifiers for the request.
seller_id = 'seller_id_example' # String | A selling partner identifier, such as a merchant account or vendor code.
sku = 'sku_example' # String | A selling partner provided identifier for an Amazon listing.
opts = { 
  included_data: ['included_data_example'] # Array<String> | A comma-delimited list of data sets to include in the response. Default: `issues`.
  mode: 'mode_example' # String | The mode of operation for the request.
  issue_locale: 'issue_locale_example' # String | A locale for localization of issues. When not provided, the default language code of the first marketplace is used. Examples: `en_US`, `fr_CA`, `fr_FR`. Localized messages default to `en_US` when a localization is not available in the specified locale.
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
 **body** | [**ListingsItemPatchRequest**](ListingsItemPatchRequest.md)| The request body schema for the &#x60;patchListingsItem&#x60; operation. | 
 **marketplace_ids** | [**Array&lt;String&gt;**](String.md)| A comma-delimited list of Amazon marketplace identifiers for the request. | 
 **seller_id** | **String**| A selling partner identifier, such as a merchant account or vendor code. | 
 **sku** | **String**| A selling partner provided identifier for an Amazon listing. | 
 **included_data** | [**Array&lt;String&gt;**](String.md)| A comma-delimited list of data sets to include in the response. Default: &#x60;issues&#x60;. | [optional] 
 **mode** | **String**| The mode of operation for the request. | [optional] 
 **issue_locale** | **String**| A locale for localization of issues. When not provided, the default language code of the first marketplace is used. Examples: &#x60;en_US&#x60;, &#x60;fr_CA&#x60;, &#x60;fr_FR&#x60;. Localized messages default to &#x60;en_US&#x60; when a localization is not available in the specified locale. | [optional] 

### Return type

[**ListingsItemSubmissionResponse**](ListingsItemSubmissionResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_listings_item**
> ListingsItemSubmissionResponse put_listings_item(bodymarketplace_idsseller_idsku, opts)



Creates a new or fully-updates an existing listings item for a selling partner.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 5 | 10 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The preceding table indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput can receive higher rate and burst values than those shown here. For more information, refer to [Usage Plans and Rate Limits](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api) in the Selling Partner API documentation.

### Example
```ruby
# load the gem
require 'listings-items-api-model'

api_instance = AmzSpApi::ListingsItemsApiModel::ListingsApi.new
body = AmzSpApi::ListingsItemsApiModel::ListingsItemPutRequest.new # ListingsItemPutRequest | The request body schema for the `putListingsItem` operation.
marketplace_ids = ['marketplace_ids_example'] # Array<String> | A comma-delimited list of Amazon marketplace identifiers for the request.
seller_id = 'seller_id_example' # String | A selling partner identifier, such as a merchant account or vendor code.
sku = 'sku_example' # String | A selling partner provided identifier for an Amazon listing.
opts = { 
  included_data: ['included_data_example'] # Array<String> | A comma-delimited list of data sets to include in the response. Default: `issues`.
  mode: 'mode_example' # String | The mode of operation for the request.
  issue_locale: 'issue_locale_example' # String | A locale for localization of issues. When not provided, the default language code of the first marketplace is used. Examples: `en_US`, `fr_CA`, `fr_FR`. Localized messages default to `en_US` when a localization is not available in the specified locale.
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
 **body** | [**ListingsItemPutRequest**](ListingsItemPutRequest.md)| The request body schema for the &#x60;putListingsItem&#x60; operation. | 
 **marketplace_ids** | [**Array&lt;String&gt;**](String.md)| A comma-delimited list of Amazon marketplace identifiers for the request. | 
 **seller_id** | **String**| A selling partner identifier, such as a merchant account or vendor code. | 
 **sku** | **String**| A selling partner provided identifier for an Amazon listing. | 
 **included_data** | [**Array&lt;String&gt;**](String.md)| A comma-delimited list of data sets to include in the response. Default: &#x60;issues&#x60;. | [optional] 
 **mode** | **String**| The mode of operation for the request. | [optional] 
 **issue_locale** | **String**| A locale for localization of issues. When not provided, the default language code of the first marketplace is used. Examples: &#x60;en_US&#x60;, &#x60;fr_CA&#x60;, &#x60;fr_FR&#x60;. Localized messages default to &#x60;en_US&#x60; when a localization is not available in the specified locale. | [optional] 

### Return type

[**ListingsItemSubmissionResponse**](ListingsItemSubmissionResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **search_listings_items**
> ItemSearchResults search_listings_items(seller_id, marketplace_ids, opts)



Search for and return a list of selling partner listings items and their respective details.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 5 | 5 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that are applied to the requested operation, when available. The preceding table contains the default rate and burst values for this operation. Selling partners whose business demands require higher throughput might have higher rate and burst values than those shown here. For more information, refer to [Usage Plans and Rate Limits](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'listings-items-api-model'

api_instance = AmzSpApi::ListingsItemsApiModel::ListingsApi.new
seller_id = 'seller_id_example' # String | A selling partner identifier, such as a merchant account or vendor code.
marketplace_ids = ['marketplace_ids_example'] # Array<String> | A comma-delimited list of Amazon marketplace identifiers for the request.
opts = { 
  issue_locale: 'issue_locale_example', # String | A locale that is used to localize issues. When not provided, the default language code of the first marketplace is used. Examples: \"en_US\", \"fr_CA\", \"fr_FR\". When a localization is not available in the specified locale, localized messages default to \"en_US\".
  included_data: ['included_data_example'], # Array<String> | A comma-delimited list of datasets that you want to include in the response. Default: `summaries`.
  identifiers: ['identifiers_example'], # Array<String> | A comma-delimited list of product identifiers that you can use to search for listings items.   **Note**:  1. This is required when you specify `identifiersType`. 2. You cannot use 'identifiers' if you specify `variationParentSku` or `packageHierarchySku`.
  identifiers_type: 'identifiers_type_example', # String | A type of product identifiers that you can use to search for listings items.   **Note**:  This is required when `identifiers` is provided.
  variation_parent_sku: 'variation_parent_sku_example', # String | Filters results to include listing items that are variation children of the specified SKU.   **Note**: You cannot use `variationParentSku` if you include `identifiers` or `packageHierarchySku` in your request.
  package_hierarchy_sku: 'package_hierarchy_sku_example', # String | Filter results to include listing items that contain or are contained by the specified SKU.   **Note**: You cannot use `packageHierarchySku` if you include `identifiers` or `variationParentSku` in your request.
  created_after: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | A date-time that is used to filter listing items. The response includes listings items that were created at or after this time. Values are in [ISO 8601](https://developer-docs.amazon.com/sp-api/docs/iso-8601) date-time format.
  created_before: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | A date-time that is used to filter listing items. The response includes listings items that were created at or before this time. Values are in [ISO 8601](https://developer-docs.amazon.com/sp-api/docs/iso-8601) date-time format.
  last_updated_after: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | A date-time that is used to filter listing items. The response includes listings items that were last updated at or after this time. Values are in [ISO 8601](https://developer-docs.amazon.com/sp-api/docs/iso-8601) date-time format.
  last_updated_before: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | A date-time that is used to filter listing items. The response includes listings items that were last updated at or before this time. Values are in [ISO 8601](https://developer-docs.amazon.com/sp-api/docs/iso-8601) date-time format.
  with_issue_severity: ['with_issue_severity_example'], # Array<String> | Filter results to include only listing items that have issues that match one or more of the specified severity levels.
  with_status: ['with_status_example'], # Array<String> | Filter results to include only listing items that have the specified status.
  without_status: ['without_status_example'], # Array<String> | Filter results to include only listing items that don't contain the specified statuses.
  sort_by: 'lastUpdatedDate', # String | An attribute by which to sort the returned listing items.
  sort_order: 'DESC', # String | The order in which to sort the result items.
  page_size: 10, # Integer | The number of results that you want to include on each page.
  page_token: 'page_token_example' # String | A token that you can use to fetch a specific page when there are multiple pages of results.
}

begin
  result = api_instance.search_listings_items(seller_id, marketplace_ids, opts)
  p result
rescue AmzSpApi::ListingsItemsApiModel::ApiError => e
  puts "Exception when calling ListingsApi->search_listings_items: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **seller_id** | **String**| A selling partner identifier, such as a merchant account or vendor code. | 
 **marketplace_ids** | [**Array&lt;String&gt;**](String.md)| A comma-delimited list of Amazon marketplace identifiers for the request. | 
 **issue_locale** | **String**| A locale that is used to localize issues. When not provided, the default language code of the first marketplace is used. Examples: \&quot;en_US\&quot;, \&quot;fr_CA\&quot;, \&quot;fr_FR\&quot;. When a localization is not available in the specified locale, localized messages default to \&quot;en_US\&quot;. | [optional] 
 **included_data** | [**Array&lt;String&gt;**](String.md)| A comma-delimited list of datasets that you want to include in the response. Default: &#x60;summaries&#x60;. | [optional] 
 **identifiers** | [**Array&lt;String&gt;**](String.md)| A comma-delimited list of product identifiers that you can use to search for listings items.   **Note**:  1. This is required when you specify &#x60;identifiersType&#x60;. 2. You cannot use &#x27;identifiers&#x27; if you specify &#x60;variationParentSku&#x60; or &#x60;packageHierarchySku&#x60;. | [optional] 
 **identifiers_type** | **String**| A type of product identifiers that you can use to search for listings items.   **Note**:  This is required when &#x60;identifiers&#x60; is provided. | [optional] 
 **variation_parent_sku** | **String**| Filters results to include listing items that are variation children of the specified SKU.   **Note**: You cannot use &#x60;variationParentSku&#x60; if you include &#x60;identifiers&#x60; or &#x60;packageHierarchySku&#x60; in your request. | [optional] 
 **package_hierarchy_sku** | **String**| Filter results to include listing items that contain or are contained by the specified SKU.   **Note**: You cannot use &#x60;packageHierarchySku&#x60; if you include &#x60;identifiers&#x60; or &#x60;variationParentSku&#x60; in your request. | [optional] 
 **created_after** | **DateTime**| A date-time that is used to filter listing items. The response includes listings items that were created at or after this time. Values are in [ISO 8601](https://developer-docs.amazon.com/sp-api/docs/iso-8601) date-time format. | [optional] 
 **created_before** | **DateTime**| A date-time that is used to filter listing items. The response includes listings items that were created at or before this time. Values are in [ISO 8601](https://developer-docs.amazon.com/sp-api/docs/iso-8601) date-time format. | [optional] 
 **last_updated_after** | **DateTime**| A date-time that is used to filter listing items. The response includes listings items that were last updated at or after this time. Values are in [ISO 8601](https://developer-docs.amazon.com/sp-api/docs/iso-8601) date-time format. | [optional] 
 **last_updated_before** | **DateTime**| A date-time that is used to filter listing items. The response includes listings items that were last updated at or before this time. Values are in [ISO 8601](https://developer-docs.amazon.com/sp-api/docs/iso-8601) date-time format. | [optional] 
 **with_issue_severity** | [**Array&lt;String&gt;**](String.md)| Filter results to include only listing items that have issues that match one or more of the specified severity levels. | [optional] 
 **with_status** | [**Array&lt;String&gt;**](String.md)| Filter results to include only listing items that have the specified status. | [optional] 
 **without_status** | [**Array&lt;String&gt;**](String.md)| Filter results to include only listing items that don&#x27;t contain the specified statuses. | [optional] 
 **sort_by** | **String**| An attribute by which to sort the returned listing items. | [optional] [default to lastUpdatedDate]
 **sort_order** | **String**| The order in which to sort the result items. | [optional] [default to DESC]
 **page_size** | **Integer**| The number of results that you want to include on each page. | [optional] [default to 10]
 **page_token** | **String**| A token that you can use to fetch a specific page when there are multiple pages of results. | [optional] 

### Return type

[**ItemSearchResults**](ItemSearchResults.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



