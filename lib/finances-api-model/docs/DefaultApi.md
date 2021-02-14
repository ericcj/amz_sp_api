# AmzSpApi::FinancesApiModel::DefaultApi

All URIs are relative to *https://sellingpartnerapi-na.amazon.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**list_financial_event_groups**](DefaultApi.md#list_financial_event_groups) | **GET** /finances/v0/financialEventGroups | 
[**list_financial_events**](DefaultApi.md#list_financial_events) | **GET** /finances/v0/financialEvents | 
[**list_financial_events_by_group_id**](DefaultApi.md#list_financial_events_by_group_id) | **GET** /finances/v0/financialEventGroups/{eventGroupId}/financialEvents | 
[**list_financial_events_by_order_id**](DefaultApi.md#list_financial_events_by_order_id) | **GET** /finances/v0/orders/{orderId}/financialEvents | 

# **list_financial_event_groups**
> ListFinancialEventGroupsResponse list_financial_event_groups(opts)



Returns financial event groups for a given date range.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 0.5 | 30 |  For more information, see \"Usage Plans and Rate Limits\" in the Selling Partner API documentation.

### Example
```ruby
# load the gem
require 'finances-api-model'

api_instance = AmzSpApi::FinancesApiModel::DefaultApi.new
opts = { 
  max_results_per_page: 100, # Integer | The maximum number of results to return per page.
  financial_event_group_started_before: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | A date used for selecting financial event groups that opened before (but not at) a specified date and time, in ISO 8601 format. The date-time  must be later than FinancialEventGroupStartedAfter and no later than two minutes before the request was submitted. If FinancialEventGroupStartedAfter and FinancialEventGroupStartedBefore are more than 180 days apart, no financial event groups are returned.
  financial_event_group_started_after: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | A date used for selecting financial event groups that opened after (or at) a specified date and time, in ISO 8601 format. The date-time must be no later than two minutes before the request was submitted.
  next_token: 'next_token_example' # String | A string token returned in the response of your previous request.
}

begin
  result = api_instance.list_financial_event_groups(opts)
  p result
rescue AmzSpApi::FinancesApiModel::ApiError => e
  puts "Exception when calling DefaultApi->list_financial_event_groups: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **max_results_per_page** | **Integer**| The maximum number of results to return per page. | [optional] [default to 100]
 **financial_event_group_started_before** | **DateTime**| A date used for selecting financial event groups that opened before (but not at) a specified date and time, in ISO 8601 format. The date-time  must be later than FinancialEventGroupStartedAfter and no later than two minutes before the request was submitted. If FinancialEventGroupStartedAfter and FinancialEventGroupStartedBefore are more than 180 days apart, no financial event groups are returned. | [optional] 
 **financial_event_group_started_after** | **DateTime**| A date used for selecting financial event groups that opened after (or at) a specified date and time, in ISO 8601 format. The date-time must be no later than two minutes before the request was submitted. | [optional] 
 **next_token** | **String**| A string token returned in the response of your previous request. | [optional] 

### Return type

[**ListFinancialEventGroupsResponse**](ListFinancialEventGroupsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_financial_events**
> ListFinancialEventsResponse list_financial_events(opts)



Returns financial events for the specified data range.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 0.5 | 30 |  For more information, see \"Usage Plans and Rate Limits\" in the Selling Partner API documentation.

### Example
```ruby
# load the gem
require 'finances-api-model'

api_instance = AmzSpApi::FinancesApiModel::DefaultApi.new
opts = { 
  max_results_per_page: 100, # Integer | The maximum number of results to return per page.
  posted_after: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | A date used for selecting financial events posted after (or at) a specified time. The date-time must be no later than two minutes before the request was submitted, in ISO 8601 date time format.
  posted_before: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | A date used for selecting financial events posted before (but not at) a specified time. The date-time must be later than PostedAfter and no later than two minutes before the request was submitted, in ISO 8601 date time format. If PostedAfter and PostedBefore are more than 180 days apart, no financial events are returned. You must specify the PostedAfter parameter if you specify the PostedBefore parameter. Default: Now minus two minutes.
  next_token: 'next_token_example' # String | A string token returned in the response of your previous request.
}

begin
  result = api_instance.list_financial_events(opts)
  p result
rescue AmzSpApi::FinancesApiModel::ApiError => e
  puts "Exception when calling DefaultApi->list_financial_events: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **max_results_per_page** | **Integer**| The maximum number of results to return per page. | [optional] [default to 100]
 **posted_after** | **DateTime**| A date used for selecting financial events posted after (or at) a specified time. The date-time must be no later than two minutes before the request was submitted, in ISO 8601 date time format. | [optional] 
 **posted_before** | **DateTime**| A date used for selecting financial events posted before (but not at) a specified time. The date-time must be later than PostedAfter and no later than two minutes before the request was submitted, in ISO 8601 date time format. If PostedAfter and PostedBefore are more than 180 days apart, no financial events are returned. You must specify the PostedAfter parameter if you specify the PostedBefore parameter. Default: Now minus two minutes. | [optional] 
 **next_token** | **String**| A string token returned in the response of your previous request. | [optional] 

### Return type

[**ListFinancialEventsResponse**](ListFinancialEventsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_financial_events_by_group_id**
> ListFinancialEventsResponse list_financial_events_by_group_id(event_group_id, opts)



Returns all financial events for the specified financial event group.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 0.5 | 30 |  For more information, see \"Usage Plans and Rate Limits\" in the Selling Partner API documentation.

### Example
```ruby
# load the gem
require 'finances-api-model'

api_instance = AmzSpApi::FinancesApiModel::DefaultApi.new
event_group_id = 'event_group_id_example' # String | The identifier of the financial event group to which the events belong.
opts = { 
  max_results_per_page: 100, # Integer | The maximum number of results to return per page.
  next_token: 'next_token_example' # String | A string token returned in the response of your previous request.
}

begin
  result = api_instance.list_financial_events_by_group_id(event_group_id, opts)
  p result
rescue AmzSpApi::FinancesApiModel::ApiError => e
  puts "Exception when calling DefaultApi->list_financial_events_by_group_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **event_group_id** | **String**| The identifier of the financial event group to which the events belong. | 
 **max_results_per_page** | **Integer**| The maximum number of results to return per page. | [optional] [default to 100]
 **next_token** | **String**| A string token returned in the response of your previous request. | [optional] 

### Return type

[**ListFinancialEventsResponse**](ListFinancialEventsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_financial_events_by_order_id**
> ListFinancialEventsResponse list_financial_events_by_order_id(order_id, opts)



Returns all financial events for the specified order.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 0.5 | 30 |  For more information, see \"Usage Plans and Rate Limits\" in the Selling Partner API documentation.

### Example
```ruby
# load the gem
require 'finances-api-model'

api_instance = AmzSpApi::FinancesApiModel::DefaultApi.new
order_id = 'order_id_example' # String | An Amazon-defined order identifier, in 3-7-7 format.
opts = { 
  max_results_per_page: 100, # Integer | The maximum number of results to return per page.
  next_token: 'next_token_example' # String | A string token returned in the response of your previous request.
}

begin
  result = api_instance.list_financial_events_by_order_id(order_id, opts)
  p result
rescue AmzSpApi::FinancesApiModel::ApiError => e
  puts "Exception when calling DefaultApi->list_financial_events_by_order_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **order_id** | **String**| An Amazon-defined order identifier, in 3-7-7 format. | 
 **max_results_per_page** | **Integer**| The maximum number of results to return per page. | [optional] [default to 100]
 **next_token** | **String**| A string token returned in the response of your previous request. | [optional] 

### Return type

[**ListFinancialEventsResponse**](ListFinancialEventsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



