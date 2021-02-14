# AmzSpApi::FbaSmallAndLightApiModel::SmallAndLightApi

All URIs are relative to *https://sellingpartnerapi-na.amazon.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_small_and_light_enrollment_by_seller_sku**](SmallAndLightApi.md#delete_small_and_light_enrollment_by_seller_sku) | **DELETE** /fba/smallAndLight/v1/enrollments/{sellerSKU} | 
[**get_small_and_light_eligibility_by_seller_sku**](SmallAndLightApi.md#get_small_and_light_eligibility_by_seller_sku) | **GET** /fba/smallAndLight/v1/eligibilities/{sellerSKU} | 
[**get_small_and_light_enrollment_by_seller_sku**](SmallAndLightApi.md#get_small_and_light_enrollment_by_seller_sku) | **GET** /fba/smallAndLight/v1/enrollments/{sellerSKU} | 
[**get_small_and_light_fee_preview**](SmallAndLightApi.md#get_small_and_light_fee_preview) | **POST** /fba/smallAndLight/v1/feePreviews | 
[**put_small_and_light_enrollment_by_seller_sku**](SmallAndLightApi.md#put_small_and_light_enrollment_by_seller_sku) | **PUT** /fba/smallAndLight/v1/enrollments/{sellerSKU} | 

# **delete_small_and_light_enrollment_by_seller_sku**
> delete_small_and_light_enrollment_by_seller_sku(seller_sku, marketplace_ids)



Removes the item indicated by the specified seller SKU from the Small and Light program in the specified marketplace. If the item is not eligible for disenrollment, the ineligibility reasons are returned.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 2 | 5 |  For more information, see \"Usage Plans and Rate Limits\" in the Selling Partner API documentation.

### Example
```ruby
# load the gem
require 'fba-small-and-light-api-model'

api_instance = AmzSpApi::FbaSmallAndLightApiModel::SmallAndLightApi.new
seller_sku = 'seller_sku_example' # String | The seller SKU that identifies the item.
marketplace_ids = ['marketplace_ids_example'] # Array<String> | The marketplace in which to remove the item from the Small and Light program. Note: Accepts a single marketplace only.


begin
  api_instance.delete_small_and_light_enrollment_by_seller_sku(seller_sku, marketplace_ids)
rescue AmzSpApi::FbaSmallAndLightApiModel::ApiError => e
  puts "Exception when calling SmallAndLightApi->delete_small_and_light_enrollment_by_seller_sku: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **seller_sku** | **String**| The seller SKU that identifies the item. | 
 **marketplace_ids** | [**Array&lt;String&gt;**](String.md)| The marketplace in which to remove the item from the Small and Light program. Note: Accepts a single marketplace only. | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_small_and_light_eligibility_by_seller_sku**
> SmallAndLightEligibility get_small_and_light_eligibility_by_seller_sku(seller_sku, marketplace_ids)



Returns the Small and Light program eligibility status of the item indicated by the specified seller SKU in the specified marketplace. If the item is not eligible, the ineligibility reasons are returned.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 2 | 10 |  For more information, see \"Usage Plans and Rate Limits\" in the Selling Partner API documentation.

### Example
```ruby
# load the gem
require 'fba-small-and-light-api-model'

api_instance = AmzSpApi::FbaSmallAndLightApiModel::SmallAndLightApi.new
seller_sku = 'seller_sku_example' # String | The seller SKU that identifies the item.
marketplace_ids = ['marketplace_ids_example'] # Array<String> | The marketplace for which the eligibility status is retrieved. NOTE: Accepts a single marketplace only.


begin
  result = api_instance.get_small_and_light_eligibility_by_seller_sku(seller_sku, marketplace_ids)
  p result
rescue AmzSpApi::FbaSmallAndLightApiModel::ApiError => e
  puts "Exception when calling SmallAndLightApi->get_small_and_light_eligibility_by_seller_sku: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **seller_sku** | **String**| The seller SKU that identifies the item. | 
 **marketplace_ids** | [**Array&lt;String&gt;**](String.md)| The marketplace for which the eligibility status is retrieved. NOTE: Accepts a single marketplace only. | 

### Return type

[**SmallAndLightEligibility**](SmallAndLightEligibility.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_small_and_light_enrollment_by_seller_sku**
> SmallAndLightEnrollment get_small_and_light_enrollment_by_seller_sku(seller_sku, marketplace_ids)



Returns the Small and Light enrollment status for the item indicated by the specified seller SKU in the specified marketplace.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 2 | 10 |  For more information, see \"Usage Plans and Rate Limits\" in the Selling Partner API documentation.

### Example
```ruby
# load the gem
require 'fba-small-and-light-api-model'

api_instance = AmzSpApi::FbaSmallAndLightApiModel::SmallAndLightApi.new
seller_sku = 'seller_sku_example' # String | The seller SKU that identifies the item.
marketplace_ids = ['marketplace_ids_example'] # Array<String> | The marketplace for which the enrollment status is retrieved. Note: Accepts a single marketplace only.


begin
  result = api_instance.get_small_and_light_enrollment_by_seller_sku(seller_sku, marketplace_ids)
  p result
rescue AmzSpApi::FbaSmallAndLightApiModel::ApiError => e
  puts "Exception when calling SmallAndLightApi->get_small_and_light_enrollment_by_seller_sku: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **seller_sku** | **String**| The seller SKU that identifies the item. | 
 **marketplace_ids** | [**Array&lt;String&gt;**](String.md)| The marketplace for which the enrollment status is retrieved. Note: Accepts a single marketplace only. | 

### Return type

[**SmallAndLightEnrollment**](SmallAndLightEnrollment.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_small_and_light_fee_preview**
> SmallAndLightFeePreviews get_small_and_light_fee_preview(body)



Returns the Small and Light fee estimates for the specified items. You must include a marketplaceId parameter to retrieve the proper fee estimates for items to be sold in that marketplace. The ordering of items in the response will mirror the order of the items in the request. Duplicate ASIN/price combinations are removed.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 1 | 3 |  For more information, see \"Usage Plans and Rate Limits\" in the Selling Partner API documentation.

### Example
```ruby
# load the gem
require 'fba-small-and-light-api-model'

api_instance = AmzSpApi::FbaSmallAndLightApiModel::SmallAndLightApi.new
body = AmzSpApi::FbaSmallAndLightApiModel::SmallAndLightFeePreviewRequest.new # SmallAndLightFeePreviewRequest | 


begin
  result = api_instance.get_small_and_light_fee_preview(body)
  p result
rescue AmzSpApi::FbaSmallAndLightApiModel::ApiError => e
  puts "Exception when calling SmallAndLightApi->get_small_and_light_fee_preview: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SmallAndLightFeePreviewRequest**](SmallAndLightFeePreviewRequest.md)|  | 

### Return type

[**SmallAndLightFeePreviews**](SmallAndLightFeePreviews.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_small_and_light_enrollment_by_seller_sku**
> SmallAndLightEnrollment put_small_and_light_enrollment_by_seller_sku(seller_sku, marketplace_ids)



Enrolls the item indicated by the specified seller SKU in the Small and Light program in the specified marketplace. If the item is not eligible, the ineligibility reasons are returned.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 2 | 5 |  For more information, see \"Usage Plans and Rate Limits\" in the Selling Partner API documentation.

### Example
```ruby
# load the gem
require 'fba-small-and-light-api-model'

api_instance = AmzSpApi::FbaSmallAndLightApiModel::SmallAndLightApi.new
seller_sku = 'seller_sku_example' # String | The seller SKU that identifies the item.
marketplace_ids = ['marketplace_ids_example'] # Array<String> | The marketplace in which to enroll the item. Note: Accepts a single marketplace only.


begin
  result = api_instance.put_small_and_light_enrollment_by_seller_sku(seller_sku, marketplace_ids)
  p result
rescue AmzSpApi::FbaSmallAndLightApiModel::ApiError => e
  puts "Exception when calling SmallAndLightApi->put_small_and_light_enrollment_by_seller_sku: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **seller_sku** | **String**| The seller SKU that identifies the item. | 
 **marketplace_ids** | [**Array&lt;String&gt;**](String.md)| The marketplace in which to enroll the item. Note: Accepts a single marketplace only. | 

### Return type

[**SmallAndLightEnrollment**](SmallAndLightEnrollment.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



