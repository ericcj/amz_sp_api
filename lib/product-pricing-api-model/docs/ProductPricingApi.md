# AmzSpApi::ProductPricingApiModel::ProductPricingApi

All URIs are relative to *https://sellingpartnerapi-na.amazon.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_competitive_pricing**](ProductPricingApi.md#get_competitive_pricing) | **GET** /products/pricing/v0/competitivePrice | 
[**get_item_offers**](ProductPricingApi.md#get_item_offers) | **GET** /products/pricing/v0/items/{Asin}/offers | 
[**get_listing_offers**](ProductPricingApi.md#get_listing_offers) | **GET** /products/pricing/v0/listings/{SellerSKU}/offers | 
[**get_pricing**](ProductPricingApi.md#get_pricing) | **GET** /products/pricing/v0/price | 

# **get_competitive_pricing**
> GetPricingResponse get_competitive_pricing(marketplace_id, item_type, opts)



Returns competitive pricing information for a seller's offer listings based on seller SKU or ASIN.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 1 | 1 |  For more information, see \"Usage Plans and Rate Limits\" in the Selling Partner API documentation.

### Example
```ruby
# load the gem
require 'product-pricing-api-model'

api_instance = AmzSpApi::ProductPricingApiModel::ProductPricingApi.new
marketplace_id = 'marketplace_id_example' # String | A marketplace identifier. Specifies the marketplace for which prices are returned.
item_type = 'item_type_example' # String | Indicates whether ASIN values or seller SKU values are used to identify items. If you specify Asin, the information in the response will be dependent on the list of Asins you provide in the Asins parameter. If you specify Sku, the information in the response will be dependent on the list of Skus you provide in the Skus parameter. Possible values: Asin, Sku.
opts = { 
  asins: ['asins_example'], # Array<String> | A list of up to twenty Amazon Standard Identification Number (ASIN) values used to identify items in the given marketplace.
  skus: ['skus_example'] # Array<String> | A list of up to twenty seller SKU values used to identify items in the given marketplace.
}

begin
  result = api_instance.get_competitive_pricing(marketplace_id, item_type, opts)
  p result
rescue AmzSpApi::ProductPricingApiModel::ApiError => e
  puts "Exception when calling ProductPricingApi->get_competitive_pricing: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **marketplace_id** | **String**| A marketplace identifier. Specifies the marketplace for which prices are returned. | 
 **item_type** | **String**| Indicates whether ASIN values or seller SKU values are used to identify items. If you specify Asin, the information in the response will be dependent on the list of Asins you provide in the Asins parameter. If you specify Sku, the information in the response will be dependent on the list of Skus you provide in the Skus parameter. Possible values: Asin, Sku. | 
 **asins** | [**Array&lt;String&gt;**](String.md)| A list of up to twenty Amazon Standard Identification Number (ASIN) values used to identify items in the given marketplace. | [optional] 
 **skus** | [**Array&lt;String&gt;**](String.md)| A list of up to twenty seller SKU values used to identify items in the given marketplace. | [optional] 

### Return type

[**GetPricingResponse**](GetPricingResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_item_offers**
> GetOffersResponse get_item_offers(marketplace_id, item_condition, asin)



Returns the lowest priced offers for a single item based on ASIN.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 1 | 1 |  For more information, see \"Usage Plans and Rate Limits\" in the Selling Partner API documentation.

### Example
```ruby
# load the gem
require 'product-pricing-api-model'

api_instance = AmzSpApi::ProductPricingApiModel::ProductPricingApi.new
marketplace_id = 'marketplace_id_example' # String | A marketplace identifier. Specifies the marketplace for which prices are returned.
item_condition = 'item_condition_example' # String | Filters the offer listings to be considered based on item condition. Possible values: New, Used, Collectible, Refurbished, Club.
asin = 'asin_example' # String | The Amazon Standard Identification Number (ASIN) of the item.


begin
  result = api_instance.get_item_offers(marketplace_id, item_condition, asin)
  p result
rescue AmzSpApi::ProductPricingApiModel::ApiError => e
  puts "Exception when calling ProductPricingApi->get_item_offers: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **marketplace_id** | **String**| A marketplace identifier. Specifies the marketplace for which prices are returned. | 
 **item_condition** | **String**| Filters the offer listings to be considered based on item condition. Possible values: New, Used, Collectible, Refurbished, Club. | 
 **asin** | **String**| The Amazon Standard Identification Number (ASIN) of the item. | 

### Return type

[**GetOffersResponse**](GetOffersResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_listing_offers**
> GetOffersResponse get_listing_offers(marketplace_id, item_condition, seller_sku)



Returns the lowest priced offers for a single SKU listing.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 1 | 1 |  For more information, see \"Usage Plans and Rate Limits\" in the Selling Partner API documentation.

### Example
```ruby
# load the gem
require 'product-pricing-api-model'

api_instance = AmzSpApi::ProductPricingApiModel::ProductPricingApi.new
marketplace_id = 'marketplace_id_example' # String | A marketplace identifier. Specifies the marketplace for which prices are returned.
item_condition = 'item_condition_example' # String | Filters the offer listings based on item condition. Possible values: New, Used, Collectible, Refurbished, Club.
seller_sku = 'seller_sku_example' # String | Identifies an item in the given marketplace. SellerSKU is qualified by the seller's SellerId, which is included with every operation that you submit.


begin
  result = api_instance.get_listing_offers(marketplace_id, item_condition, seller_sku)
  p result
rescue AmzSpApi::ProductPricingApiModel::ApiError => e
  puts "Exception when calling ProductPricingApi->get_listing_offers: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **marketplace_id** | **String**| A marketplace identifier. Specifies the marketplace for which prices are returned. | 
 **item_condition** | **String**| Filters the offer listings based on item condition. Possible values: New, Used, Collectible, Refurbished, Club. | 
 **seller_sku** | **String**| Identifies an item in the given marketplace. SellerSKU is qualified by the seller&#x27;s SellerId, which is included with every operation that you submit. | 

### Return type

[**GetOffersResponse**](GetOffersResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_pricing**
> GetPricingResponse get_pricing(marketplace_id, item_type, opts)



Returns pricing information for a seller's offer listings based on seller SKU or ASIN.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 1 | 1 |  For more information, see \"Usage Plans and Rate Limits\" in the Selling Partner API documentation.

### Example
```ruby
# load the gem
require 'product-pricing-api-model'

api_instance = AmzSpApi::ProductPricingApiModel::ProductPricingApi.new
marketplace_id = 'marketplace_id_example' # String | A marketplace identifier. Specifies the marketplace for which prices are returned.
item_type = 'item_type_example' # String | Indicates whether ASIN values or seller SKU values are used to identify items. If you specify Asin, the information in the response will be dependent on the list of Asins you provide in the Asins parameter. If you specify Sku, the information in the response will be dependent on the list of Skus you provide in the Skus parameter.
opts = { 
  asins: ['asins_example'], # Array<String> | A list of up to twenty Amazon Standard Identification Number (ASIN) values used to identify items in the given marketplace.
  skus: ['skus_example'], # Array<String> | A list of up to twenty seller SKU values used to identify items in the given marketplace.
  item_condition: 'item_condition_example' # String | Filters the offer listings based on item condition. Possible values: New, Used, Collectible, Refurbished, Club.
}

begin
  result = api_instance.get_pricing(marketplace_id, item_type, opts)
  p result
rescue AmzSpApi::ProductPricingApiModel::ApiError => e
  puts "Exception when calling ProductPricingApi->get_pricing: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **marketplace_id** | **String**| A marketplace identifier. Specifies the marketplace for which prices are returned. | 
 **item_type** | **String**| Indicates whether ASIN values or seller SKU values are used to identify items. If you specify Asin, the information in the response will be dependent on the list of Asins you provide in the Asins parameter. If you specify Sku, the information in the response will be dependent on the list of Skus you provide in the Skus parameter. | 
 **asins** | [**Array&lt;String&gt;**](String.md)| A list of up to twenty Amazon Standard Identification Number (ASIN) values used to identify items in the given marketplace. | [optional] 
 **skus** | [**Array&lt;String&gt;**](String.md)| A list of up to twenty seller SKU values used to identify items in the given marketplace. | [optional] 
 **item_condition** | **String**| Filters the offer listings based on item condition. Possible values: New, Used, Collectible, Refurbished, Club. | [optional] 

### Return type

[**GetPricingResponse**](GetPricingResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



