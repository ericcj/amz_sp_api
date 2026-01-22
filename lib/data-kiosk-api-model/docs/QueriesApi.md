# AmzSpApi::DataKioskApiModel::QueriesApi

All URIs are relative to *https://sellingpartnerapi-na.amazon.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cancel_query**](QueriesApi.md#cancel_query) | **DELETE** /dataKiosk/2023-11-15/queries/{queryId} | 
[**create_query**](QueriesApi.md#create_query) | **POST** /dataKiosk/2023-11-15/queries | 
[**get_document**](QueriesApi.md#get_document) | **GET** /dataKiosk/2023-11-15/documents/{documentId} | 
[**get_queries**](QueriesApi.md#get_queries) | **GET** /dataKiosk/2023-11-15/queries | 
[**get_query**](QueriesApi.md#get_query) | **GET** /dataKiosk/2023-11-15/queries/{queryId} | 

# **cancel_query**
> cancel_query(query_id)



Cancels the query specified by the `queryId` parameter. Only queries with a non-terminal `processingStatus` (`IN_QUEUE`, `IN_PROGRESS`) can be cancelled. Cancelling a query that already has a `processingStatus` of `CANCELLED` will no-op. Cancelled queries are returned in subsequent calls to the `getQuery` and `getQueries` operations.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 0.0222 | 10 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values than those shown here. For more information, refer to [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'data-kiosk-api-model'

api_instance = AmzSpApi::DataKioskApiModel::QueriesApi.new
query_id = 'query_id_example' # String | The identifier for the query. This identifier is unique only in combination with a selling partner account ID.


begin
  api_instance.cancel_query(query_id)
rescue AmzSpApi::DataKioskApiModel::ApiError => e
  puts "Exception when calling QueriesApi->cancel_query: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query_id** | **String**| The identifier for the query. This identifier is unique only in combination with a selling partner account ID. | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **create_query**
> CreateQueryResponse create_query(body)



Creates a Data Kiosk query request.  **Note:** The retention of a query varies based on the fields requested. Each field within a schema is annotated with a `@resultRetention` directive that defines how long a query containing that field will be retained. When a query contains multiple fields with different retentions, the shortest (minimum) retention is applied. The retention of a query's resulting documents always matches the retention of the query.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 0.0167 | 15 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values than those shown here. For more information, refer to [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'data-kiosk-api-model'

api_instance = AmzSpApi::DataKioskApiModel::QueriesApi.new
body = AmzSpApi::DataKioskApiModel::CreateQuerySpecification.new # CreateQuerySpecification | The body of the request.


begin
  result = api_instance.create_query(body)
  p result
rescue AmzSpApi::DataKioskApiModel::ApiError => e
  puts "Exception when calling QueriesApi->create_query: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateQuerySpecification**](CreateQuerySpecification.md)| The body of the request. | 

### Return type

[**CreateQueryResponse**](CreateQueryResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_document**
> GetDocumentResponse get_document(document_id)



Returns the information required for retrieving a Data Kiosk document's contents. See the `createQuery` operation for details about document retention.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 0.0167 | 15 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values than those shown here. For more information, refer to [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'data-kiosk-api-model'

api_instance = AmzSpApi::DataKioskApiModel::QueriesApi.new
document_id = 'document_id_example' # String | The identifier for the Data Kiosk document.


begin
  result = api_instance.get_document(document_id)
  p result
rescue AmzSpApi::DataKioskApiModel::ApiError => e
  puts "Exception when calling QueriesApi->get_document: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **document_id** | **String**| The identifier for the Data Kiosk document. | 

### Return type

[**GetDocumentResponse**](GetDocumentResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_queries**
> GetQueriesResponse get_queries(opts)



Returns details for the Data Kiosk queries that match the specified filters. See the `createQuery` operation for details about query retention.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 0.0222 | 10 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values than those shown here. For more information, refer to [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'data-kiosk-api-model'

api_instance = AmzSpApi::DataKioskApiModel::QueriesApi.new
opts = { 
  processing_statuses: ['processing_statuses_example'], # Array<String> | A list of processing statuses used to filter queries.
  page_size: 10, # Integer | The maximum number of queries to return in a single call.
  created_since: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | The earliest query creation date and time for queries to include in the response, in ISO 8601 date time format. The default is 90 days ago.
  created_until: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | The latest query creation date and time for queries to include in the response, in ISO 8601 date time format. The default is the time of the `getQueries` request.
  pagination_token: 'pagination_token_example' # String | A token to fetch a certain page of results when there are multiple pages of results available. The value of this token is fetched from the `pagination.nextToken` field returned in the `GetQueriesResponse` object. All other parameters must be provided with the same values that were provided with the request that generated this token, with the exception of `pageSize` which can be modified between calls to `getQueries`. In the absence of this token value, `getQueries` returns the first page of results.
}

begin
  result = api_instance.get_queries(opts)
  p result
rescue AmzSpApi::DataKioskApiModel::ApiError => e
  puts "Exception when calling QueriesApi->get_queries: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **processing_statuses** | [**Array&lt;String&gt;**](String.md)| A list of processing statuses used to filter queries. | [optional] 
 **page_size** | **Integer**| The maximum number of queries to return in a single call. | [optional] [default to 10]
 **created_since** | **DateTime**| The earliest query creation date and time for queries to include in the response, in ISO 8601 date time format. The default is 90 days ago. | [optional] 
 **created_until** | **DateTime**| The latest query creation date and time for queries to include in the response, in ISO 8601 date time format. The default is the time of the &#x60;getQueries&#x60; request. | [optional] 
 **pagination_token** | **String**| A token to fetch a certain page of results when there are multiple pages of results available. The value of this token is fetched from the &#x60;pagination.nextToken&#x60; field returned in the &#x60;GetQueriesResponse&#x60; object. All other parameters must be provided with the same values that were provided with the request that generated this token, with the exception of &#x60;pageSize&#x60; which can be modified between calls to &#x60;getQueries&#x60;. In the absence of this token value, &#x60;getQueries&#x60; returns the first page of results. | [optional] 

### Return type

[**GetQueriesResponse**](GetQueriesResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_query**
> Query get_query(query_id)



Returns query details for the query specified by the `queryId` parameter. See the `createQuery` operation for details about query retention.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 2.0 | 15 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values than those shown here. For more information, refer to [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'data-kiosk-api-model'

api_instance = AmzSpApi::DataKioskApiModel::QueriesApi.new
query_id = 'query_id_example' # String | The query identifier.


begin
  result = api_instance.get_query(query_id)
  p result
rescue AmzSpApi::DataKioskApiModel::ApiError => e
  puts "Exception when calling QueriesApi->get_query: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query_id** | **String**| The query identifier. | 

### Return type

[**Query**](Query.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



