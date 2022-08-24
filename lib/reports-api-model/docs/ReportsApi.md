# AmzSpApi::ReportsApiModel::ReportsApi

All URIs are relative to *https://sellingpartnerapi-na.amazon.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cancel_report**](ReportsApi.md#cancel_report) | **DELETE** /reports/2021-06-30/reports/{reportId} | 
[**cancel_report_schedule**](ReportsApi.md#cancel_report_schedule) | **DELETE** /reports/2021-06-30/schedules/{reportScheduleId} | 
[**create_report**](ReportsApi.md#create_report) | **POST** /reports/2021-06-30/reports | 
[**create_report_schedule**](ReportsApi.md#create_report_schedule) | **POST** /reports/2021-06-30/schedules | 
[**get_report**](ReportsApi.md#get_report) | **GET** /reports/2021-06-30/reports/{reportId} | 
[**get_report_document**](ReportsApi.md#get_report_document) | **GET** /reports/2021-06-30/documents/{reportDocumentId} | 
[**get_report_schedule**](ReportsApi.md#get_report_schedule) | **GET** /reports/2021-06-30/schedules/{reportScheduleId} | 
[**get_report_schedules**](ReportsApi.md#get_report_schedules) | **GET** /reports/2021-06-30/schedules | 
[**get_reports**](ReportsApi.md#get_reports) | **GET** /reports/2021-06-30/reports | 

# **cancel_report**
> cancel_report(report_id)



Cancels the report that you specify. Only reports with processingStatus=IN_QUEUE can be cancelled. Cancelled reports are returned in subsequent calls to the getReport and getReports operations.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 0.0222 | 10 |  For more information, see \"Usage Plans and Rate Limits\" in the Selling Partner API documentation.

### Example
```ruby
# load the gem
require 'reports-api-model'

api_instance = AmzSpApi::ReportsApiModel::ReportsApi.new
report_id = 'report_id_example' # String | The identifier for the report. This identifier is unique only in combination with a seller ID.


begin
  api_instance.cancel_report(report_id)
rescue AmzSpApi::ReportsApiModel::ApiError => e
  puts "Exception when calling ReportsApi->cancel_report: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **report_id** | **String**| The identifier for the report. This identifier is unique only in combination with a seller ID. | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **cancel_report_schedule**
> cancel_report_schedule(report_schedule_id)



Cancels the report schedule that you specify.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 0.0222 | 10 |  For more information, see \"Usage Plans and Rate Limits\" in the Selling Partner API documentation.

### Example
```ruby
# load the gem
require 'reports-api-model'

api_instance = AmzSpApi::ReportsApiModel::ReportsApi.new
report_schedule_id = 'report_schedule_id_example' # String | The identifier for the report schedule. This identifier is unique only in combination with a seller ID.


begin
  api_instance.cancel_report_schedule(report_schedule_id)
rescue AmzSpApi::ReportsApiModel::ApiError => e
  puts "Exception when calling ReportsApi->cancel_report_schedule: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **report_schedule_id** | **String**| The identifier for the report schedule. This identifier is unique only in combination with a seller ID. | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **create_report**
> CreateReportResponse create_report(body)



Creates a report.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 0.0167 | 15 |  For more information, see \"Usage Plans and Rate Limits\" in the Selling Partner API documentation.

### Example
```ruby
# load the gem
require 'reports-api-model'

api_instance = AmzSpApi::ReportsApiModel::ReportsApi.new
body = AmzSpApi::ReportsApiModel::CreateReportSpecification.new # CreateReportSpecification | 


begin
  result = api_instance.create_report(body)
  p result
rescue AmzSpApi::ReportsApiModel::ApiError => e
  puts "Exception when calling ReportsApi->create_report: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateReportSpecification**](CreateReportSpecification.md)|  | 

### Return type

[**CreateReportResponse**](CreateReportResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_report_schedule**
> CreateReportScheduleResponse create_report_schedule(body)



Creates a report schedule. If a report schedule with the same report type and marketplace IDs already exists, it will be cancelled and replaced with this one.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 0.0222 | 10 |  For more information, see \"Usage Plans and Rate Limits\" in the Selling Partner API documentation.

### Example
```ruby
# load the gem
require 'reports-api-model'

api_instance = AmzSpApi::ReportsApiModel::ReportsApi.new
body = AmzSpApi::ReportsApiModel::CreateReportScheduleSpecification.new # CreateReportScheduleSpecification | 


begin
  result = api_instance.create_report_schedule(body)
  p result
rescue AmzSpApi::ReportsApiModel::ApiError => e
  puts "Exception when calling ReportsApi->create_report_schedule: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateReportScheduleSpecification**](CreateReportScheduleSpecification.md)|  | 

### Return type

[**CreateReportScheduleResponse**](CreateReportScheduleResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_report**
> Report get_report(report_id)



Returns report details (including the reportDocumentId, if available) for the report that you specify.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 2.0 | 15 |  For more information, see \"Usage Plans and Rate Limits\" in the Selling Partner API documentation.

### Example
```ruby
# load the gem
require 'reports-api-model'

api_instance = AmzSpApi::ReportsApiModel::ReportsApi.new
report_id = 'report_id_example' # String | The identifier for the report. This identifier is unique only in combination with a seller ID.


begin
  result = api_instance.get_report(report_id)
  p result
rescue AmzSpApi::ReportsApiModel::ApiError => e
  puts "Exception when calling ReportsApi->get_report: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **report_id** | **String**| The identifier for the report. This identifier is unique only in combination with a seller ID. | 

### Return type

[**Report**](Report.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_report_document**
> ReportDocument get_report_document(report_document_id)



Returns the information required for retrieving a report document's contents.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 0.0167 | 15 |  For more information, see \"Usage Plans and Rate Limits\" in the Selling Partner API documentation.

### Example
```ruby
# load the gem
require 'reports-api-model'

api_instance = AmzSpApi::ReportsApiModel::ReportsApi.new
report_document_id = 'report_document_id_example' # String | The identifier for the report document.


begin
  result = api_instance.get_report_document(report_document_id)
  p result
rescue AmzSpApi::ReportsApiModel::ApiError => e
  puts "Exception when calling ReportsApi->get_report_document: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **report_document_id** | **String**| The identifier for the report document. | 

### Return type

[**ReportDocument**](ReportDocument.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_report_schedule**
> ReportSchedule get_report_schedule(report_schedule_id)



Returns report schedule details for the report schedule that you specify.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 0.0222 | 10 |  For more information, see \"Usage Plans and Rate Limits\" in the Selling Partner API documentation.

### Example
```ruby
# load the gem
require 'reports-api-model'

api_instance = AmzSpApi::ReportsApiModel::ReportsApi.new
report_schedule_id = 'report_schedule_id_example' # String | The identifier for the report schedule. This identifier is unique only in combination with a seller ID.


begin
  result = api_instance.get_report_schedule(report_schedule_id)
  p result
rescue AmzSpApi::ReportsApiModel::ApiError => e
  puts "Exception when calling ReportsApi->get_report_schedule: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **report_schedule_id** | **String**| The identifier for the report schedule. This identifier is unique only in combination with a seller ID. | 

### Return type

[**ReportSchedule**](ReportSchedule.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_report_schedules**
> ReportScheduleList get_report_schedules(report_types)



Returns report schedule details that match the filters that you specify.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 0.0222 | 10 |  For more information, see \"Usage Plans and Rate Limits\" in the Selling Partner API documentation.

### Example
```ruby
# load the gem
require 'reports-api-model'

api_instance = AmzSpApi::ReportsApiModel::ReportsApi.new
report_types = ['report_types_example'] # Array<String> | A list of report types used to filter report schedules.


begin
  result = api_instance.get_report_schedules(report_types)
  p result
rescue AmzSpApi::ReportsApiModel::ApiError => e
  puts "Exception when calling ReportsApi->get_report_schedules: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **report_types** | [**Array&lt;String&gt;**](String.md)| A list of report types used to filter report schedules. | 

### Return type

[**ReportScheduleList**](ReportScheduleList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_reports**
> GetReportsResponse get_reports(opts)



Returns report details for the reports that match the filters that you specify.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 0.0222 | 10 |  For more information, see \"Usage Plans and Rate Limits\" in the Selling Partner API documentation.

### Example
```ruby
# load the gem
require 'reports-api-model'

api_instance = AmzSpApi::ReportsApiModel::ReportsApi.new
opts = { 
  report_types: ['report_types_example'], # Array<String> | A list of report types used to filter reports. When reportTypes is provided, the other filter parameters (processingStatuses, marketplaceIds, createdSince, createdUntil) and pageSize may also be provided. Either reportTypes or nextToken is required.
  processing_statuses: ['processing_statuses_example'], # Array<String> | A list of processing statuses used to filter reports.
  marketplace_ids: ['marketplace_ids_example'], # Array<String> | A list of marketplace identifiers used to filter reports. The reports returned will match at least one of the marketplaces that you specify.
  page_size: 10, # Integer | The maximum number of reports to return in a single call.
  created_since: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | The earliest report creation date and time for reports to include in the response, in ISO 8601 date time format. The default is 90 days ago. Reports are retained for a maximum of 90 days.
  created_until: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | The latest report creation date and time for reports to include in the response, in ISO 8601 date time format. The default is now.
  next_token: 'next_token_example' # String | A string token returned in the response to your previous request. nextToken is returned when the number of results exceeds the specified pageSize value. To get the next page of results, call the getReports operation and include this token as the only parameter. Specifying nextToken with any other parameters will cause the request to fail.
}

begin
  result = api_instance.get_reports(opts)
  p result
rescue AmzSpApi::ReportsApiModel::ApiError => e
  puts "Exception when calling ReportsApi->get_reports: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **report_types** | [**Array&lt;String&gt;**](String.md)| A list of report types used to filter reports. When reportTypes is provided, the other filter parameters (processingStatuses, marketplaceIds, createdSince, createdUntil) and pageSize may also be provided. Either reportTypes or nextToken is required. | [optional] 
 **processing_statuses** | [**Array&lt;String&gt;**](String.md)| A list of processing statuses used to filter reports. | [optional] 
 **marketplace_ids** | [**Array&lt;String&gt;**](String.md)| A list of marketplace identifiers used to filter reports. The reports returned will match at least one of the marketplaces that you specify. | [optional] 
 **page_size** | **Integer**| The maximum number of reports to return in a single call. | [optional] [default to 10]
 **created_since** | **DateTime**| The earliest report creation date and time for reports to include in the response, in ISO 8601 date time format. The default is 90 days ago. Reports are retained for a maximum of 90 days. | [optional] 
 **created_until** | **DateTime**| The latest report creation date and time for reports to include in the response, in ISO 8601 date time format. The default is now. | [optional] 
 **next_token** | **String**| A string token returned in the response to your previous request. nextToken is returned when the number of results exceeds the specified pageSize value. To get the next page of results, call the getReports operation and include this token as the only parameter. Specifying nextToken with any other parameters will cause the request to fail. | [optional] 

### Return type

[**GetReportsResponse**](GetReportsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



