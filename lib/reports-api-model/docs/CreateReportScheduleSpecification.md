# AmzSpApi::ReportsApiModel::CreateReportScheduleSpecification

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**report_type** | **String** | The report type. Refer to [Report Type Values](https://developer-docs.amazon.com/sp-api/docs/report-type-values) for more information. | 
**marketplace_ids** | **Array&lt;String&gt;** | A list of marketplace identifiers for the report schedule. | 
**report_options** | [**ReportOptions**](ReportOptions.md) |  | [optional] 
**period** | **String** | One of a set of predefined &lt;a href&#x3D;&#x27;https://developer-docs.amazon.com/sp-api/docs/iso-8601&#x27;&gt;ISO 8601&lt;/a&gt; periods that specifies how often a report should be created. | 
**next_report_creation_time** | **DateTime** | The date and time when the schedule will create its next report, in &lt;a href&#x3D;&#x27;https://developer-docs.amazon.com/sp-api/docs/iso-8601&#x27;&gt;ISO 8601&lt;/a&gt; date time format. | [optional] 

