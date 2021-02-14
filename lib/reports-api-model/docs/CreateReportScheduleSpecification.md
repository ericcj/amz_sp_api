# AmzSpApi::ReportsApiModel::CreateReportScheduleSpecification

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**report_type** | **String** | The report type. | 
**marketplace_ids** | **Array&lt;String&gt;** | A list of marketplace identifiers for the report schedule. | 
**report_options** | [**ReportOptions**](ReportOptions.md) |  | [optional] 
**period** | **String** | One of a set of predefined ISO 8601 periods that specifies how often a report should be created. | 
**next_report_creation_time** | **DateTime** | The date and time when the schedule will create its next report, in ISO 8601 date time format. | [optional] 

