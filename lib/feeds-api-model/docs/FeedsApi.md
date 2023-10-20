# AmzSpApi::FeedsApiModel::FeedsApi

All URIs are relative to *https://sellingpartnerapi-na.amazon.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cancel_feed**](FeedsApi.md#cancel_feed) | **DELETE** /feeds/2020-09-04/feeds/{feedId} | 
[**create_feed**](FeedsApi.md#create_feed) | **POST** /feeds/2020-09-04/feeds | 
[**create_feed_document**](FeedsApi.md#create_feed_document) | **POST** /feeds/2020-09-04/documents | 
[**get_feed**](FeedsApi.md#get_feed) | **GET** /feeds/2020-09-04/feeds/{feedId} | 
[**get_feed_document**](FeedsApi.md#get_feed_document) | **GET** /feeds/2020-09-04/documents/{feedDocumentId} | 
[**get_feeds**](FeedsApi.md#get_feeds) | **GET** /feeds/2020-09-04/feeds | 

# **cancel_feed**
> CancelFeedResponse cancel_feed(feed_id)



Effective June 27, 2023, the `cancelFeed` operation will no longer be available in the Selling Partner API for Feeds v2020-09-04 and all calls to it will fail. Integrations that rely on this operation should migrate to [Feeds v2021-06-30](https://developer-docs.amazon.com/sp-api/docs/feeds-api-v2021-06-30-reference) to avoid service disruption.

### Example
```ruby
# load the gem
require 'feeds-api-model'

api_instance = AmzSpApi::FeedsApiModel::FeedsApi.new
feed_id = 'feed_id_example' # String | The identifier for the feed. This identifier is unique only in combination with a seller ID.


begin
  result = api_instance.cancel_feed(feed_id)
  p result
rescue AmzSpApi::FeedsApiModel::ApiError => e
  puts "Exception when calling FeedsApi->cancel_feed: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **feed_id** | **String**| The identifier for the feed. This identifier is unique only in combination with a seller ID. | 

### Return type

[**CancelFeedResponse**](CancelFeedResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **create_feed**
> CreateFeedResponse create_feed(body)



Effective June 27, 2023, the `createFeed` operation will no longer be available in the Selling Partner API for Feeds v2020-09-04 and all calls to it will fail. Integrations that rely on this operation should migrate to [Feeds v2021-06-30](https://developer-docs.amazon.com/sp-api/docs/feeds-api-v2021-06-30-reference) to avoid service disruption.

### Example
```ruby
# load the gem
require 'feeds-api-model'

api_instance = AmzSpApi::FeedsApiModel::FeedsApi.new
body = AmzSpApi::FeedsApiModel::CreateFeedSpecification.new # CreateFeedSpecification | 


begin
  result = api_instance.create_feed(body)
  p result
rescue AmzSpApi::FeedsApiModel::ApiError => e
  puts "Exception when calling FeedsApi->create_feed: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateFeedSpecification**](CreateFeedSpecification.md)|  | 

### Return type

[**CreateFeedResponse**](CreateFeedResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_feed_document**
> CreateFeedDocumentResponse create_feed_document(body)



Effective June 27, 2023, the `createFeedDocument` operation will no longer be available in the Selling Partner API for Feeds v2020-09-04 and all calls to it will fail. Integrations that rely on this operation should migrate to [Feeds v2021-06-30](https://developer-docs.amazon.com/sp-api/docs/feeds-api-v2021-06-30-reference) to avoid service disruption.

### Example
```ruby
# load the gem
require 'feeds-api-model'

api_instance = AmzSpApi::FeedsApiModel::FeedsApi.new
body = AmzSpApi::FeedsApiModel::CreateFeedDocumentSpecification.new # CreateFeedDocumentSpecification | 


begin
  result = api_instance.create_feed_document(body)
  p result
rescue AmzSpApi::FeedsApiModel::ApiError => e
  puts "Exception when calling FeedsApi->create_feed_document: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateFeedDocumentSpecification**](CreateFeedDocumentSpecification.md)|  | 

### Return type

[**CreateFeedDocumentResponse**](CreateFeedDocumentResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_feed**
> GetFeedResponse get_feed(feed_id)



Effective June 27, 2023, the `getFeed` operation will no longer be available in the Selling Partner API for Feeds v2020-09-04 and all calls to it will fail. Integrations that rely on this operation should migrate to [Feeds v2021-06-30](https://developer-docs.amazon.com/sp-api/docs/feeds-api-v2021-06-30-reference) to avoid service disruption.

### Example
```ruby
# load the gem
require 'feeds-api-model'

api_instance = AmzSpApi::FeedsApiModel::FeedsApi.new
feed_id = 'feed_id_example' # String | The identifier for the feed. This identifier is unique only in combination with a seller ID.


begin
  result = api_instance.get_feed(feed_id)
  p result
rescue AmzSpApi::FeedsApiModel::ApiError => e
  puts "Exception when calling FeedsApi->get_feed: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **feed_id** | **String**| The identifier for the feed. This identifier is unique only in combination with a seller ID. | 

### Return type

[**GetFeedResponse**](GetFeedResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_feed_document**
> GetFeedDocumentResponse get_feed_document(feed_document_id)



Effective June 27, 2023, the `getFeedDocument` operation will no longer be available in the Selling Partner API for Feeds v2020-09-04 and all calls to it will fail. Integrations that rely on this operation should migrate to [Feeds v2021-06-30](https://developer-docs.amazon.com/sp-api/docs/feeds-api-v2021-06-30-reference) to avoid service disruption.

### Example
```ruby
# load the gem
require 'feeds-api-model'

api_instance = AmzSpApi::FeedsApiModel::FeedsApi.new
feed_document_id = 'feed_document_id_example' # String | The identifier of the feed document.


begin
  result = api_instance.get_feed_document(feed_document_id)
  p result
rescue AmzSpApi::FeedsApiModel::ApiError => e
  puts "Exception when calling FeedsApi->get_feed_document: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **feed_document_id** | **String**| The identifier of the feed document. | 

### Return type

[**GetFeedDocumentResponse**](GetFeedDocumentResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_feeds**
> GetFeedsResponse get_feeds(opts)



Effective June 27, 2023, the `getFeeds` operation will no longer be available in the Selling Partner API for Feeds v2020-09-04 and all calls to it will fail. Integrations that rely on this operation should migrate to [Feeds v2021-06-30](https://developer-docs.amazon.com/sp-api/docs/feeds-api-v2021-06-30-reference) to avoid service disruption.

### Example
```ruby
# load the gem
require 'feeds-api-model'

api_instance = AmzSpApi::FeedsApiModel::FeedsApi.new
opts = { 
  feed_types: ['feed_types_example'], # Array<String> | A list of feed types used to filter feeds. When feedTypes is provided, the other filter parameters (processingStatuses, marketplaceIds, createdSince, createdUntil) and pageSize may also be provided. Either feedTypes or nextToken is required.
  marketplace_ids: ['marketplace_ids_example'], # Array<String> | A list of marketplace identifiers used to filter feeds. The feeds returned will match at least one of the marketplaces that you specify.
  page_size: 10, # Integer | The maximum number of feeds to return in a single call.
  processing_statuses: ['processing_statuses_example'], # Array<String> | A list of processing statuses used to filter feeds.
  created_since: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | The earliest feed creation date and time for feeds included in the response, in ISO 8601 format. The default is 90 days ago. Feeds are retained for a maximum of 90 days.
  created_until: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | The latest feed creation date and time for feeds included in the response, in ISO 8601 format. The default is now.
  next_token: 'next_token_example' # String | A string token returned in the response to your previous request. nextToken is returned when the number of results exceeds the specified pageSize value. To get the next page of results, call the getFeeds operation and include this token as the only parameter. Specifying nextToken with any other parameters will cause the request to fail.
}

begin
  result = api_instance.get_feeds(opts)
  p result
rescue AmzSpApi::FeedsApiModel::ApiError => e
  puts "Exception when calling FeedsApi->get_feeds: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **feed_types** | [**Array&lt;String&gt;**](String.md)| A list of feed types used to filter feeds. When feedTypes is provided, the other filter parameters (processingStatuses, marketplaceIds, createdSince, createdUntil) and pageSize may also be provided. Either feedTypes or nextToken is required. | [optional] 
 **marketplace_ids** | [**Array&lt;String&gt;**](String.md)| A list of marketplace identifiers used to filter feeds. The feeds returned will match at least one of the marketplaces that you specify. | [optional] 
 **page_size** | **Integer**| The maximum number of feeds to return in a single call. | [optional] [default to 10]
 **processing_statuses** | [**Array&lt;String&gt;**](String.md)| A list of processing statuses used to filter feeds. | [optional] 
 **created_since** | **DateTime**| The earliest feed creation date and time for feeds included in the response, in ISO 8601 format. The default is 90 days ago. Feeds are retained for a maximum of 90 days. | [optional] 
 **created_until** | **DateTime**| The latest feed creation date and time for feeds included in the response, in ISO 8601 format. The default is now. | [optional] 
 **next_token** | **String**| A string token returned in the response to your previous request. nextToken is returned when the number of results exceeds the specified pageSize value. To get the next page of results, call the getFeeds operation and include this token as the only parameter. Specifying nextToken with any other parameters will cause the request to fail. | [optional] 

### Return type

[**GetFeedsResponse**](GetFeedsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



