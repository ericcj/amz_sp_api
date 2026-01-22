# AmzSpApi::ProductTypeDefinitionsApiModel::DefinitionsApi

All URIs are relative to *https://sellingpartnerapi-na.amazon.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_definitions_product_type**](DefinitionsApi.md#get_definitions_product_type) | **GET** /definitions/2020-09-01/productTypes/{productType} | 
[**search_definitions_product_types**](DefinitionsApi.md#search_definitions_product_types) | **GET** /definitions/2020-09-01/productTypes | 

# **get_definitions_product_type**
> ProductTypeDefinition get_definitions_product_type(product_type, marketplace_ids, opts)



Retrieve an Amazon product type definition.  **Usage Plans:**  | Plan type | Rate (requests per second) | Burst | | ---- | ---- | ---- | |Default| 5 | 10 | |Selling partner specific| Variable | Variable |  The x-amzn-RateLimit-Limit response header returns the usage plan rate limits that were applied to the requested operation. Rate limits for some selling partners will vary from the default rate and burst shown in the table above. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](doc:usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'product-type-definitions-api-model'

api_instance = AmzSpApi::ProductTypeDefinitionsApiModel::DefinitionsApi.new
product_type = 'product_type_example' # String | The Amazon product type name.
marketplace_ids = ['marketplace_ids_example'] # Array<String> | A comma-delimited list of Amazon marketplace identifiers for the request. Note: This parameter is limited to one marketplaceId at this time.
opts = { 
  seller_id: 'seller_id_example', # String | A selling partner identifier. When provided, seller-specific requirements and values are populated within the product type definition schema, such as brand names associated with the selling partner.
  product_type_version: 'LATEST', # String | The version of the Amazon product type to retrieve. Defaults to \"LATEST\",. Prerelease versions of product type definitions may be retrieved with \"RELEASE_CANDIDATE\". If no prerelease version is currently available, the \"LATEST\" live version will be provided.
  requirements: 'LISTING', # String | The name of the requirements set to retrieve requirements for.
  requirements_enforced: 'ENFORCED', # String | Identifies if the required attributes for a requirements set are enforced by the product type definition schema. Non-enforced requirements enable structural validation of individual attributes without all the required attributes being present (such as for partial updates).
  locale: 'DEFAULT' # String | Locale for retrieving display labels and other presentation details. Defaults to the default language of the first marketplace in the request.
}

begin
  result = api_instance.get_definitions_product_type(product_type, marketplace_ids, opts)
  p result
rescue AmzSpApi::ProductTypeDefinitionsApiModel::ApiError => e
  puts "Exception when calling DefinitionsApi->get_definitions_product_type: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product_type** | **String**| The Amazon product type name. | 
 **marketplace_ids** | [**Array&lt;String&gt;**](String.md)| A comma-delimited list of Amazon marketplace identifiers for the request. Note: This parameter is limited to one marketplaceId at this time. | 
 **seller_id** | **String**| A selling partner identifier. When provided, seller-specific requirements and values are populated within the product type definition schema, such as brand names associated with the selling partner. | [optional] 
 **product_type_version** | **String**| The version of the Amazon product type to retrieve. Defaults to \&quot;LATEST\&quot;,. Prerelease versions of product type definitions may be retrieved with \&quot;RELEASE_CANDIDATE\&quot;. If no prerelease version is currently available, the \&quot;LATEST\&quot; live version will be provided. | [optional] [default to LATEST]
 **requirements** | **String**| The name of the requirements set to retrieve requirements for. | [optional] [default to LISTING]
 **requirements_enforced** | **String**| Identifies if the required attributes for a requirements set are enforced by the product type definition schema. Non-enforced requirements enable structural validation of individual attributes without all the required attributes being present (such as for partial updates). | [optional] [default to ENFORCED]
 **locale** | **String**| Locale for retrieving display labels and other presentation details. Defaults to the default language of the first marketplace in the request. | [optional] [default to DEFAULT]

### Return type

[**ProductTypeDefinition**](ProductTypeDefinition.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **search_definitions_product_types**
> ProductTypeList search_definitions_product_types(marketplace_ids, opts)



Search for and return a list of Amazon product types that have definitions available.  **Usage Plans:**  | Plan type | Rate (requests per second) | Burst | | ---- | ---- | ---- | |Default| 5 | 10 | |Selling partner specific| Variable | Variable |  The x-amzn-RateLimit-Limit response header returns the usage plan rate limits that were applied to the requested operation. Rate limits for some selling partners will vary from the default rate and burst shown in the table above. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](doc:usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'product-type-definitions-api-model'

api_instance = AmzSpApi::ProductTypeDefinitionsApiModel::DefinitionsApi.new
marketplace_ids = ['marketplace_ids_example'] # Array<String> | A comma-delimited list of Amazon marketplace identifiers for the request.
opts = { 
  keywords: ['keywords_example'], # Array<String> | A comma-delimited list of keywords to search product types. **Note:** Cannot be used with `itemName`.
  item_name: 'item_name_example', # String | The title of the ASIN to get the product type recommendation. **Note:** Cannot be used with `keywords`.
  locale: 'locale_example', # String | The locale for the display names in the response. Defaults to the primary locale of the marketplace.
  search_locale: 'search_locale_example' # String | The locale used for the `keywords` and `itemName` parameters. Defaults to the primary locale of the marketplace.
}

begin
  result = api_instance.search_definitions_product_types(marketplace_ids, opts)
  p result
rescue AmzSpApi::ProductTypeDefinitionsApiModel::ApiError => e
  puts "Exception when calling DefinitionsApi->search_definitions_product_types: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **marketplace_ids** | [**Array&lt;String&gt;**](String.md)| A comma-delimited list of Amazon marketplace identifiers for the request. | 
 **keywords** | [**Array&lt;String&gt;**](String.md)| A comma-delimited list of keywords to search product types. **Note:** Cannot be used with &#x60;itemName&#x60;. | [optional] 
 **item_name** | **String**| The title of the ASIN to get the product type recommendation. **Note:** Cannot be used with &#x60;keywords&#x60;. | [optional] 
 **locale** | **String**| The locale for the display names in the response. Defaults to the primary locale of the marketplace. | [optional] 
 **search_locale** | **String**| The locale used for the &#x60;keywords&#x60; and &#x60;itemName&#x60; parameters. Defaults to the primary locale of the marketplace. | [optional] 

### Return type

[**ProductTypeList**](ProductTypeList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



