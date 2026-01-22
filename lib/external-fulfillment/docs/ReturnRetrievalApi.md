# AmzSpApi::ExternalFulfillment::ReturnRetrievalApi

All URIs are relative to *https://sellingpartnerapi-na.amazon.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_return**](ReturnRetrievalApi.md#get_return) | **GET** /externalFulfillment/2024-09-11/returns/{returnId} | 
[**list_returns**](ReturnRetrievalApi.md#list_returns) | **GET** /externalFulfillment/2024-09-11/returns | 

# **get_return**
> ModelReturn get_return(return_id)



Retrieve the return item with the specified ID.

### Example
```ruby
# load the gem
require 'external-fulfillment'

api_instance = AmzSpApi::ExternalFulfillment::ReturnRetrievalApi.new
return_id = 'return_id_example' # String | The ID of the return item you want.


begin
  result = api_instance.get_return(return_id)
  p result
rescue AmzSpApi::ExternalFulfillment::ApiError => e
  puts "Exception when calling ReturnRetrievalApi->get_return: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **return_id** | **String**| The ID of the return item you want. | 

### Return type

[**ModelReturn**](ModelReturn.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_returns**
> ReturnsResponse list_returns(opts)



Retrieve a list of return items. You can filter results by location, RMA ID, status, or time.

### Example
```ruby
# load the gem
require 'external-fulfillment'

api_instance = AmzSpApi::ExternalFulfillment::ReturnRetrievalApi.new
opts = { 
  return_location_id: 'return_location_id_example', # String | The SmartConnect location ID of the location from which you want to retrieve return items.
  rma_id: 'rma_id_example', # String | The RMA ID of the return items you want to list.
  status: 'status_example', # String | The status of return items you want to list. You can retrieve all new return items with the `CREATED` status.
  reverse_tracking_id: 'reverse_tracking_id_example', # String | The reverse tracking ID of the return items you want to list.
  created_since: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | Return items created after the specified date are included in the response. In [ISO 8601](https://developer-docs.amazon.com/sp-api/docs/iso-8601) date-time format.
  created_until: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | Return items created before the specified date are included in the response. In [ISO 8601](https://developer-docs.amazon.com/sp-api/docs/iso-8601) date-time format.
  last_updated_since: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | Return items updated after the specified date are included in the response. In [ISO 8601](https://developer-docs.amazon.com/sp-api/docs/iso-8601) date-time format. If you supply this parameter, you must also supply `returnLocationId` and `status`.
  last_updated_until: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | Return items whose most recent update is before the specified date are included in the response. In [ISO 8601](https://developer-docs.amazon.com/sp-api/docs/iso-8601) date-time format. If you supply this parameter, you must also supply `returnLocationId` and `status`.
  last_updated_after: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | DEPRECATED. Use the `createdSince` parameter.
  last_updated_before: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | DEPRECATED. Use the `createdUntil` parameter.
  max_results: 789, # Integer | The number of return items you want to include in the response.  **Default:** 10  **Maximum:** 100
  next_token: 'next_token_example' # String | A token that you use to retrieve the next page of results. The response includes `nextToken` when there are multiple pages of results. To get the next page of results, call the operation with this token and include the same arguments as the call that produced the token. To get a complete list, call this operation until `nextToken` is null. Note that this operation can return empty pages.
}

begin
  result = api_instance.list_returns(opts)
  p result
rescue AmzSpApi::ExternalFulfillment::ApiError => e
  puts "Exception when calling ReturnRetrievalApi->list_returns: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **return_location_id** | **String**| The SmartConnect location ID of the location from which you want to retrieve return items. | [optional] 
 **rma_id** | **String**| The RMA ID of the return items you want to list. | [optional] 
 **status** | **String**| The status of return items you want to list. You can retrieve all new return items with the &#x60;CREATED&#x60; status. | [optional] 
 **reverse_tracking_id** | **String**| The reverse tracking ID of the return items you want to list. | [optional] 
 **created_since** | **DateTime**| Return items created after the specified date are included in the response. In [ISO 8601](https://developer-docs.amazon.com/sp-api/docs/iso-8601) date-time format. | [optional] 
 **created_until** | **DateTime**| Return items created before the specified date are included in the response. In [ISO 8601](https://developer-docs.amazon.com/sp-api/docs/iso-8601) date-time format. | [optional] 
 **last_updated_since** | **DateTime**| Return items updated after the specified date are included in the response. In [ISO 8601](https://developer-docs.amazon.com/sp-api/docs/iso-8601) date-time format. If you supply this parameter, you must also supply &#x60;returnLocationId&#x60; and &#x60;status&#x60;. | [optional] 
 **last_updated_until** | **DateTime**| Return items whose most recent update is before the specified date are included in the response. In [ISO 8601](https://developer-docs.amazon.com/sp-api/docs/iso-8601) date-time format. If you supply this parameter, you must also supply &#x60;returnLocationId&#x60; and &#x60;status&#x60;. | [optional] 
 **last_updated_after** | **DateTime**| DEPRECATED. Use the &#x60;createdSince&#x60; parameter. | [optional] 
 **last_updated_before** | **DateTime**| DEPRECATED. Use the &#x60;createdUntil&#x60; parameter. | [optional] 
 **max_results** | **Integer**| The number of return items you want to include in the response.  **Default:** 10  **Maximum:** 100 | [optional] 
 **next_token** | **String**| A token that you use to retrieve the next page of results. The response includes &#x60;nextToken&#x60; when there are multiple pages of results. To get the next page of results, call the operation with this token and include the same arguments as the call that produced the token. To get a complete list, call this operation until &#x60;nextToken&#x60; is null. Note that this operation can return empty pages. | [optional] 

### Return type

[**ReturnsResponse**](ReturnsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



