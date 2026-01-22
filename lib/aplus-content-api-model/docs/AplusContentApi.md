# AmzSpApi::AplusContentApiModel::AplusContentApi

All URIs are relative to *https://sellingpartnerapi-na.amazon.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_content_document**](AplusContentApi.md#create_content_document) | **POST** /aplus/2020-11-01/contentDocuments | 
[**get_content_document**](AplusContentApi.md#get_content_document) | **GET** /aplus/2020-11-01/contentDocuments/{contentReferenceKey} | 
[**list_content_document_asin_relations**](AplusContentApi.md#list_content_document_asin_relations) | **GET** /aplus/2020-11-01/contentDocuments/{contentReferenceKey}/asins | 
[**post_content_document_approval_submission**](AplusContentApi.md#post_content_document_approval_submission) | **POST** /aplus/2020-11-01/contentDocuments/{contentReferenceKey}/approvalSubmissions | 
[**post_content_document_asin_relations**](AplusContentApi.md#post_content_document_asin_relations) | **POST** /aplus/2020-11-01/contentDocuments/{contentReferenceKey}/asins | 
[**post_content_document_suspend_submission**](AplusContentApi.md#post_content_document_suspend_submission) | **POST** /aplus/2020-11-01/contentDocuments/{contentReferenceKey}/suspendSubmissions | 
[**search_content_documents**](AplusContentApi.md#search_content_documents) | **GET** /aplus/2020-11-01/contentDocuments | 
[**search_content_publish_records**](AplusContentApi.md#search_content_publish_records) | **GET** /aplus/2020-11-01/contentPublishRecords | 
[**update_content_document**](AplusContentApi.md#update_content_document) | **POST** /aplus/2020-11-01/contentDocuments/{contentReferenceKey} | 
[**validate_content_document_asin_relations**](AplusContentApi.md#validate_content_document_asin_relations) | **POST** /aplus/2020-11-01/contentAsinValidations | 

# **create_content_document**
> PostContentDocumentResponse create_content_document(bodymarketplace_id)



Creates a new A+ Content document.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 10 | 10 |  The `x-amzn-RateLimit-Limit` response header contains the usage plan rate limits for the operation, when available. The preceding table contains the default rate and burst values for this operation. Selling partners whose business demands require higher throughput might have higher rate and burst values than those shown here. For more information, refer to [Usage Plans and Rate Limits](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'aplus-content-api-model'

api_instance = AmzSpApi::AplusContentApiModel::AplusContentApi.new
body = AmzSpApi::AplusContentApiModel::PostContentDocumentRequest.new # PostContentDocumentRequest | The content document request details.
marketplace_id = 'marketplace_id_example' # String | The marketplace ID is the globally unique identifier of a marketplace. To find the ID for your marketplace, refer to [Marketplace IDs](https://developer-docs.amazon.com/sp-api/docs/marketplace-ids).


begin
  result = api_instance.create_content_document(bodymarketplace_id)
  p result
rescue AmzSpApi::AplusContentApiModel::ApiError => e
  puts "Exception when calling AplusContentApi->create_content_document: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**PostContentDocumentRequest**](PostContentDocumentRequest.md)| The content document request details. | 
 **marketplace_id** | **String**| The marketplace ID is the globally unique identifier of a marketplace. To find the ID for your marketplace, refer to [Marketplace IDs](https://developer-docs.amazon.com/sp-api/docs/marketplace-ids). | 

### Return type

[**PostContentDocumentResponse**](PostContentDocumentResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_content_document**
> GetContentDocumentResponse get_content_document(content_reference_key, marketplace_id, included_data_set)



Returns an A+ Content document, if available.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 10 | 10 |  The `x-amzn-RateLimit-Limit` response header contains the usage plan rate limits for the operation, when available. The preceding table contains the default rate and burst values for this operation. Selling partners whose business demands require higher throughput might have higher rate and burst values than those shown here. For more information, refer to [Usage Plans and Rate Limits](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'aplus-content-api-model'

api_instance = AmzSpApi::AplusContentApiModel::AplusContentApi.new
content_reference_key = 'content_reference_key_example' # String | The unique reference key for the A+ Content document. A content reference key cannot form a permalink and might change in the future. A content reference key is not guaranteed to match any A+ Content identifier.
marketplace_id = 'marketplace_id_example' # String | The marketplace ID is the globally unique identifier of a marketplace. To find the ID for your marketplace, refer to [Marketplace IDs](https://developer-docs.amazon.com/sp-api/docs/marketplace-ids).
included_data_set = ['included_data_set_example'] # Array<String> | The set of A+ Content data types to include in the response.


begin
  result = api_instance.get_content_document(content_reference_key, marketplace_id, included_data_set)
  p result
rescue AmzSpApi::AplusContentApiModel::ApiError => e
  puts "Exception when calling AplusContentApi->get_content_document: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **content_reference_key** | **String**| The unique reference key for the A+ Content document. A content reference key cannot form a permalink and might change in the future. A content reference key is not guaranteed to match any A+ Content identifier. | 
 **marketplace_id** | **String**| The marketplace ID is the globally unique identifier of a marketplace. To find the ID for your marketplace, refer to [Marketplace IDs](https://developer-docs.amazon.com/sp-api/docs/marketplace-ids). | 
 **included_data_set** | [**Array&lt;String&gt;**](String.md)| The set of A+ Content data types to include in the response. | 

### Return type

[**GetContentDocumentResponse**](GetContentDocumentResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_content_document_asin_relations**
> ListContentDocumentAsinRelationsResponse list_content_document_asin_relations(content_reference_key, marketplace_id, opts)



Returns a list of ASINs that are related to the specified A+ Content document, if available. If you don't include the `asinSet` parameter, this operation returns all ASINs related to the content document.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 10 | 10 |  The `x-amzn-RateLimit-Limit` response header contains the usage plan rate limits for the operation, when available. The preceding table contains the default rate and burst values for this operation. Selling partners whose business demands require higher throughput might have higher rate and burst values than those shown here. For more information, refer to [Usage Plans and Rate Limits](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'aplus-content-api-model'

api_instance = AmzSpApi::AplusContentApiModel::AplusContentApi.new
content_reference_key = 'content_reference_key_example' # String | The unique reference key for the A+ Content document. A content reference key cannot form a permalink and might change in the future. A content reference key is not guaranteed to match any A+ Content identifier.
marketplace_id = 'marketplace_id_example' # String | The marketplace ID is the globally unique identifier of a marketplace. To find the ID for your marketplace, refer to [Marketplace IDs](https://developer-docs.amazon.com/sp-api/docs/marketplace-ids).
opts = { 
  included_data_set: ['included_data_set_example'], # Array<String> | The set of A+ Content data types to include in the response. If you don't include this parameter, the operation returns the related ASINs without metadata.
  asin_set: ['asin_set_example'], # Array<String> | The set of ASINs.
  page_token: 'page_token_example' # String | A token that you use to fetch a specific page when there are multiple pages of results.
}

begin
  result = api_instance.list_content_document_asin_relations(content_reference_key, marketplace_id, opts)
  p result
rescue AmzSpApi::AplusContentApiModel::ApiError => e
  puts "Exception when calling AplusContentApi->list_content_document_asin_relations: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **content_reference_key** | **String**| The unique reference key for the A+ Content document. A content reference key cannot form a permalink and might change in the future. A content reference key is not guaranteed to match any A+ Content identifier. | 
 **marketplace_id** | **String**| The marketplace ID is the globally unique identifier of a marketplace. To find the ID for your marketplace, refer to [Marketplace IDs](https://developer-docs.amazon.com/sp-api/docs/marketplace-ids). | 
 **included_data_set** | [**Array&lt;String&gt;**](String.md)| The set of A+ Content data types to include in the response. If you don&#x27;t include this parameter, the operation returns the related ASINs without metadata. | [optional] 
 **asin_set** | [**Array&lt;String&gt;**](String.md)| The set of ASINs. | [optional] 
 **page_token** | **String**| A token that you use to fetch a specific page when there are multiple pages of results. | [optional] 

### Return type

[**ListContentDocumentAsinRelationsResponse**](ListContentDocumentAsinRelationsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **post_content_document_approval_submission**
> PostContentDocumentApprovalSubmissionResponse post_content_document_approval_submission(content_reference_key, marketplace_id)



Submits an A+ Content document for review, approval, and publishing.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 10 | 10 |  The `x-amzn-RateLimit-Limit` response header contains the usage plan rate limits for the operation, when available. The preceding table contains the default rate and burst values for this operation. Selling partners whose business demands require higher throughput might have higher rate and burst values than those shown here. For more information, refer to [Usage Plans and Rate Limits](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'aplus-content-api-model'

api_instance = AmzSpApi::AplusContentApiModel::AplusContentApi.new
content_reference_key = 'content_reference_key_example' # String | The unique reference key for the A+ Content document. A content reference key cannot form a permalink and might change in the future. A content reference key is not guaranteed to match any A+ content identifier.
marketplace_id = 'marketplace_id_example' # String | The marketplace ID is the globally unique identifier of a marketplace. To find the ID for your marketplace, refer to [Marketplace IDs](https://developer-docs.amazon.com/sp-api/docs/marketplace-ids).


begin
  result = api_instance.post_content_document_approval_submission(content_reference_key, marketplace_id)
  p result
rescue AmzSpApi::AplusContentApiModel::ApiError => e
  puts "Exception when calling AplusContentApi->post_content_document_approval_submission: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **content_reference_key** | **String**| The unique reference key for the A+ Content document. A content reference key cannot form a permalink and might change in the future. A content reference key is not guaranteed to match any A+ content identifier. | 
 **marketplace_id** | **String**| The marketplace ID is the globally unique identifier of a marketplace. To find the ID for your marketplace, refer to [Marketplace IDs](https://developer-docs.amazon.com/sp-api/docs/marketplace-ids). | 

### Return type

[**PostContentDocumentApprovalSubmissionResponse**](PostContentDocumentApprovalSubmissionResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **post_content_document_asin_relations**
> PostContentDocumentAsinRelationsResponse post_content_document_asin_relations(bodymarketplace_idcontent_reference_key)



Replaces all ASINs related to the specified A+ Content document, if available. This operation can add or remove ASINs, depending on the current set of related ASINs. Removing an ASIN will suspend the content document from that ASIN.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 10 | 10 |  The `x-amzn-RateLimit-Limit` response header contains the usage plan rate limits for the operation, when available. The preceding table contains the default rate and burst values for this operation. Selling partners whose business demands require higher throughput might have higher rate and burst values than those shown here. For more information, refer to [Usage Plans and Rate Limits](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'aplus-content-api-model'

api_instance = AmzSpApi::AplusContentApiModel::AplusContentApi.new
body = AmzSpApi::AplusContentApiModel::PostContentDocumentAsinRelationsRequest.new # PostContentDocumentAsinRelationsRequest | The request details for the content document ASIN relations.
marketplace_id = 'marketplace_id_example' # String | The marketplace ID is the globally unique identifier of a marketplace. To find the ID for your marketplace, refer to [Marketplace IDs](https://developer-docs.amazon.com/sp-api/docs/marketplace-ids).
content_reference_key = 'content_reference_key_example' # String | The unique reference key for the A+ Content document. A content reference key cannot form a permalink and might change in the future. A content reference key is not guaranteed to match any A+ content identifier.


begin
  result = api_instance.post_content_document_asin_relations(bodymarketplace_idcontent_reference_key)
  p result
rescue AmzSpApi::AplusContentApiModel::ApiError => e
  puts "Exception when calling AplusContentApi->post_content_document_asin_relations: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**PostContentDocumentAsinRelationsRequest**](PostContentDocumentAsinRelationsRequest.md)| The request details for the content document ASIN relations. | 
 **marketplace_id** | **String**| The marketplace ID is the globally unique identifier of a marketplace. To find the ID for your marketplace, refer to [Marketplace IDs](https://developer-docs.amazon.com/sp-api/docs/marketplace-ids). | 
 **content_reference_key** | **String**| The unique reference key for the A+ Content document. A content reference key cannot form a permalink and might change in the future. A content reference key is not guaranteed to match any A+ content identifier. | 

### Return type

[**PostContentDocumentAsinRelationsResponse**](PostContentDocumentAsinRelationsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_content_document_suspend_submission**
> PostContentDocumentSuspendSubmissionResponse post_content_document_suspend_submission(content_reference_key, marketplace_id)



Submits a request to suspend visible A+ Content. This doesn't delete the content document or the ASIN relations.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 10 | 10 |  The `x-amzn-RateLimit-Limit` response header contains the usage plan rate limits for the operation, when available. The preceding table contains the default rate and burst values for this operation. Selling partners whose business demands require higher throughput might have higher rate and burst values than those shown here. For more information, refer to [Usage Plans and Rate Limits](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'aplus-content-api-model'

api_instance = AmzSpApi::AplusContentApiModel::AplusContentApi.new
content_reference_key = 'content_reference_key_example' # String | The unique reference key for the A+ Content document. A content reference key cannot form a permalink and might change in the future. A content reference key is not guaranteed to match any A+ content identifier.
marketplace_id = 'marketplace_id_example' # String | The marketplace ID is the globally unique identifier of a marketplace. To find the ID for your marketplace, refer to [Marketplace IDs](https://developer-docs.amazon.com/sp-api/docs/marketplace-ids).


begin
  result = api_instance.post_content_document_suspend_submission(content_reference_key, marketplace_id)
  p result
rescue AmzSpApi::AplusContentApiModel::ApiError => e
  puts "Exception when calling AplusContentApi->post_content_document_suspend_submission: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **content_reference_key** | **String**| The unique reference key for the A+ Content document. A content reference key cannot form a permalink and might change in the future. A content reference key is not guaranteed to match any A+ content identifier. | 
 **marketplace_id** | **String**| The marketplace ID is the globally unique identifier of a marketplace. To find the ID for your marketplace, refer to [Marketplace IDs](https://developer-docs.amazon.com/sp-api/docs/marketplace-ids). | 

### Return type

[**PostContentDocumentSuspendSubmissionResponse**](PostContentDocumentSuspendSubmissionResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **search_content_documents**
> SearchContentDocumentsResponse search_content_documents(marketplace_id, opts)



Returns a list of all A+ Content documents, including metadata, that are assigned to a selling partner. To get the actual contents of the A+ Content documents, call the `getContentDocument` operation.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 10 | 10 |  The `x-amzn-RateLimit-Limit` response header contains the usage plan rate limits for the operation, when available. The preceding table contains the default rate and burst values for this operation. Selling partners whose business demands require higher throughput might have higher rate and burst values than those shown here. For more information, refer to [Usage Plans and Rate Limits](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'aplus-content-api-model'

api_instance = AmzSpApi::AplusContentApiModel::AplusContentApi.new
marketplace_id = 'marketplace_id_example' # String | The marketplace ID is the globally unique identifier of a marketplace. To find the ID for your marketplace, refer to [Marketplace IDs](https://developer-docs.amazon.com/sp-api/docs/marketplace-ids).
opts = { 
  page_token: 'page_token_example' # String | A token that you use to fetch a specific page when there are multiple pages of results.
}

begin
  result = api_instance.search_content_documents(marketplace_id, opts)
  p result
rescue AmzSpApi::AplusContentApiModel::ApiError => e
  puts "Exception when calling AplusContentApi->search_content_documents: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **marketplace_id** | **String**| The marketplace ID is the globally unique identifier of a marketplace. To find the ID for your marketplace, refer to [Marketplace IDs](https://developer-docs.amazon.com/sp-api/docs/marketplace-ids). | 
 **page_token** | **String**| A token that you use to fetch a specific page when there are multiple pages of results. | [optional] 

### Return type

[**SearchContentDocumentsResponse**](SearchContentDocumentsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **search_content_publish_records**
> SearchContentPublishRecordsResponse search_content_publish_records(marketplace_id, asin, opts)



Searches for A+ Content publishing records, if available.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 10 | 10 |  The `x-amzn-RateLimit-Limit` response header contains the usage plan rate limits for the operation, when available. The preceding table contains the default rate and burst values for this operation. Selling partners whose business demands require higher throughput might have higher rate and burst values than those shown here. For more information, refer to [Usage Plans and Rate Limits](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'aplus-content-api-model'

api_instance = AmzSpApi::AplusContentApiModel::AplusContentApi.new
marketplace_id = 'marketplace_id_example' # String | The marketplace ID is the globally unique identifier of a marketplace. To find the ID for your marketplace, refer to [Marketplace IDs](https://developer-docs.amazon.com/sp-api/docs/marketplace-ids).
asin = 'asin_example' # String | The Amazon Standard Identification Number (ASIN) is the unique identifier of a product within a marketplace.
opts = { 
  page_token: 'page_token_example' # String | A token that you use to fetch a specific page when there are multiple pages of results.
}

begin
  result = api_instance.search_content_publish_records(marketplace_id, asin, opts)
  p result
rescue AmzSpApi::AplusContentApiModel::ApiError => e
  puts "Exception when calling AplusContentApi->search_content_publish_records: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **marketplace_id** | **String**| The marketplace ID is the globally unique identifier of a marketplace. To find the ID for your marketplace, refer to [Marketplace IDs](https://developer-docs.amazon.com/sp-api/docs/marketplace-ids). | 
 **asin** | **String**| The Amazon Standard Identification Number (ASIN) is the unique identifier of a product within a marketplace. | 
 **page_token** | **String**| A token that you use to fetch a specific page when there are multiple pages of results. | [optional] 

### Return type

[**SearchContentPublishRecordsResponse**](SearchContentPublishRecordsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_content_document**
> PostContentDocumentResponse update_content_document(bodymarketplace_idcontent_reference_key)



Updates an existing A+ Content document.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 10 | 10 |  The `x-amzn-RateLimit-Limit` response header contains the usage plan rate limits for the operation, when available. The preceding table contains the default rate and burst values for this operation. Selling partners whose business demands require higher throughput might have higher rate and burst values than those shown here. For more information, refer to [Usage Plans and Rate Limits](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'aplus-content-api-model'

api_instance = AmzSpApi::AplusContentApiModel::AplusContentApi.new
body = AmzSpApi::AplusContentApiModel::PostContentDocumentRequest.new # PostContentDocumentRequest | The content document request details.
marketplace_id = 'marketplace_id_example' # String | The marketplace ID is the globally unique identifier of a marketplace. To find the ID for your marketplace, refer to [Marketplace IDs](https://developer-docs.amazon.com/sp-api/docs/marketplace-ids).
content_reference_key = 'content_reference_key_example' # String | The unique reference key for the A+ Content document. A content reference key cannot form a permalink and might change in the future. A content reference key is not guaranteed to match any A+ Content identifier.


begin
  result = api_instance.update_content_document(bodymarketplace_idcontent_reference_key)
  p result
rescue AmzSpApi::AplusContentApiModel::ApiError => e
  puts "Exception when calling AplusContentApi->update_content_document: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**PostContentDocumentRequest**](PostContentDocumentRequest.md)| The content document request details. | 
 **marketplace_id** | **String**| The marketplace ID is the globally unique identifier of a marketplace. To find the ID for your marketplace, refer to [Marketplace IDs](https://developer-docs.amazon.com/sp-api/docs/marketplace-ids). | 
 **content_reference_key** | **String**| The unique reference key for the A+ Content document. A content reference key cannot form a permalink and might change in the future. A content reference key is not guaranteed to match any A+ Content identifier. | 

### Return type

[**PostContentDocumentResponse**](PostContentDocumentResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **validate_content_document_asin_relations**
> ValidateContentDocumentAsinRelationsResponse validate_content_document_asin_relations(bodymarketplace_id, opts)



Checks if the A+ Content document is valid for use on a set of ASINs.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 10 | 10 |  The `x-amzn-RateLimit-Limit` response header contains the usage plan rate limits for the operation, when available. The preceding table contains the default rate and burst values for this operation. Selling partners whose business demands require higher throughput might have higher rate and burst values than those shown here. For more information, refer to [Usage Plans and Rate Limits](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'aplus-content-api-model'

api_instance = AmzSpApi::AplusContentApiModel::AplusContentApi.new
body = AmzSpApi::AplusContentApiModel::PostContentDocumentRequest.new # PostContentDocumentRequest | The content document request details.
marketplace_id = 'marketplace_id_example' # String | The marketplace ID is the globally unique identifier of a marketplace. To find the ID for your marketplace, refer to [Marketplace IDs](https://developer-docs.amazon.com/sp-api/docs/marketplace-ids).
opts = { 
  asin_set: ['asin_set_example'] # Array<String> | The set of ASINs.
}

begin
  result = api_instance.validate_content_document_asin_relations(bodymarketplace_id, opts)
  p result
rescue AmzSpApi::AplusContentApiModel::ApiError => e
  puts "Exception when calling AplusContentApi->validate_content_document_asin_relations: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**PostContentDocumentRequest**](PostContentDocumentRequest.md)| The content document request details. | 
 **marketplace_id** | **String**| The marketplace ID is the globally unique identifier of a marketplace. To find the ID for your marketplace, refer to [Marketplace IDs](https://developer-docs.amazon.com/sp-api/docs/marketplace-ids). | 
 **asin_set** | [**Array&lt;String&gt;**](String.md)| The set of ASINs. | [optional] 

### Return type

[**ValidateContentDocumentAsinRelationsResponse**](ValidateContentDocumentAsinRelationsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



