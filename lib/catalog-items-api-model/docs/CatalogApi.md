# AmzSpApi::CatalogItemsApiModel::CatalogApi

All URIs are relative to *https://sellingpartnerapi-na.amazon.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_catalog_item**](CatalogApi.md#get_catalog_item) | **GET** /catalog/2020-12-01/items/{asin} | 
[**search_catalog_items**](CatalogApi.md#search_catalog_items) | **GET** /catalog/2020-12-01/items | 

# **get_catalog_item**
> Item get_catalog_item(asin, marketplace_ids, opts)



Retrieves details for an item in the Amazon catalog.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 2 | 2 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values than those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](doc:usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'catalog-items-api-model'

api_instance = AmzSpApi::CatalogItemsApiModel::CatalogApi.new
asin = 'asin_example' # String | The Amazon Standard Identification Number (ASIN) of the item.
marketplace_ids = ['marketplace_ids_example'] # Array<String> | A comma-delimited list of Amazon marketplace identifiers. Data sets in the response contain data only for the specified marketplaces.
opts = { 
  included_data: ['included_data_example'], # Array<String> | A comma-delimited list of data sets to include in the response. Default: summaries.
  locale: 'locale_example' # String | Locale for retrieving localized summaries. Defaults to the primary locale of the marketplace.
}

begin
  result = api_instance.get_catalog_item(asin, marketplace_ids, opts)
  p result
rescue AmzSpApi::CatalogItemsApiModel::ApiError => e
  puts "Exception when calling CatalogApi->get_catalog_item: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **asin** | **String**| The Amazon Standard Identification Number (ASIN) of the item. | 
 **marketplace_ids** | [**Array&lt;String&gt;**](String.md)| A comma-delimited list of Amazon marketplace identifiers. Data sets in the response contain data only for the specified marketplaces. | 
 **included_data** | [**Array&lt;String&gt;**](String.md)| A comma-delimited list of data sets to include in the response. Default: summaries. | [optional] 
 **locale** | **String**| Locale for retrieving localized summaries. Defaults to the primary locale of the marketplace. | [optional] 

### Return type

[**Item**](Item.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **search_catalog_items**
> ItemSearchResults search_catalog_items(keywords, marketplace_ids, opts)



Search for and return a list of Amazon catalog items and associated information.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 2 | 2 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values than those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](doc:usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'catalog-items-api-model'

api_instance = AmzSpApi::CatalogItemsApiModel::CatalogApi.new
keywords = ['keywords_example'] # Array<String> | A comma-delimited list of words or item identifiers to search the Amazon catalog for.
marketplace_ids = ['marketplace_ids_example'] # Array<String> | A comma-delimited list of Amazon marketplace identifiers for the request.
opts = { 
  included_data: ['included_data_example'], # Array<String> | A comma-delimited list of data sets to include in the response. Default: summaries.
  brand_names: ['brand_names_example'], # Array<String> | A comma-delimited list of brand names to limit the search to.
  classification_ids: ['classification_ids_example'], # Array<String> | A comma-delimited list of classification identifiers to limit the search to.
  page_size: 10, # Integer | Number of results to be returned per page.
  page_token: 'page_token_example', # String | A token to fetch a certain page when there are multiple pages worth of results.
  keywords_locale: 'keywords_locale_example', # String | The language the keywords are provided in. Defaults to the primary locale of the marketplace.
  locale: 'locale_example' # String | Locale for retrieving localized summaries. Defaults to the primary locale of the marketplace.
}

begin
  result = api_instance.search_catalog_items(keywords, marketplace_ids, opts)
  p result
rescue AmzSpApi::CatalogItemsApiModel::ApiError => e
  puts "Exception when calling CatalogApi->search_catalog_items: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **keywords** | [**Array&lt;String&gt;**](String.md)| A comma-delimited list of words or item identifiers to search the Amazon catalog for. | 
 **marketplace_ids** | [**Array&lt;String&gt;**](String.md)| A comma-delimited list of Amazon marketplace identifiers for the request. | 
 **included_data** | [**Array&lt;String&gt;**](String.md)| A comma-delimited list of data sets to include in the response. Default: summaries. | [optional] 
 **brand_names** | [**Array&lt;String&gt;**](String.md)| A comma-delimited list of brand names to limit the search to. | [optional] 
 **classification_ids** | [**Array&lt;String&gt;**](String.md)| A comma-delimited list of classification identifiers to limit the search to. | [optional] 
 **page_size** | **Integer**| Number of results to be returned per page. | [optional] [default to 10]
 **page_token** | **String**| A token to fetch a certain page when there are multiple pages worth of results. | [optional] 
 **keywords_locale** | **String**| The language the keywords are provided in. Defaults to the primary locale of the marketplace. | [optional] 
 **locale** | **String**| Locale for retrieving localized summaries. Defaults to the primary locale of the marketplace. | [optional] 

### Return type

[**ItemSearchResults**](ItemSearchResults.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



