# AmzSpApi::ReportsApiModel::ReportSchedule

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**report_schedule_id** | **String** | The identifier for the report schedule. This identifier is unique only in combination with a seller ID. | 
**report_type** | **String** | The report type. Refer to [Report Type Values](https://developer-docs.amazon.com/sp-api/docs/report-type-values) for more information. | 
**marketplace_ids** | **Array&lt;String&gt;** | A list of marketplace identifiers. The report document&#x27;s contents will contain data for all of the specified marketplaces, unless the report type indicates otherwise. | [optional] 
**report_options** | [**ReportOptions**](ReportOptions.md) |  | [optional] 
**period** | **String** | An &lt;a href&#x3D;&#x27;https://developer-docs.amazon.com/sp-api/docs/iso-8601&#x27;&gt;ISO 8601&lt;/a&gt; period value that indicates how often a report should be created. | 
**next_report_creation_time** | **DateTime** | The date and time when the schedule will create its next report, in &lt;a href&#x3D;&#x27;https://developer-docs.amazon.com/sp-api/docs/iso-8601&#x27;&gt;ISO 8601&lt;/a&gt; date time format. | [optional] 

