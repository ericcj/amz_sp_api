# AmzSpApi::ReportsApiModel::CreateReportSpecification

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**report_options** | [**ReportOptions**](ReportOptions.md) |  | [optional] 
**report_type** | **String** | The report type. Refer to [Report Type Values](https://developer-docs.amazon.com/sp-api/docs/report-type-values) for more information. | 
**data_start_time** | **DateTime** | The start of a date and time range, in &lt;a href&#x3D;&#x27;https://developer-docs.amazon.com/sp-api/docs/iso-8601&#x27;&gt;ISO 8601&lt;/a&gt; date time format, used for selecting the data to report. The default is now. The value must be prior to or equal to the current date and time. Not all report types make use of this. | [optional] 
**data_end_time** | **DateTime** | The end of a date and time range, in &lt;a href&#x3D;&#x27;https://developer-docs.amazon.com/sp-api/docs/iso-8601&#x27;&gt;ISO 8601&lt;/a&gt; date time format, used for selecting the data to report. The default is now. The value must be prior to or equal to the current date and time. Not all report types make use of this. | [optional] 
**marketplace_ids** | **Array&lt;String&gt;** | A list of marketplace identifiers. The report document&#x27;s contents will contain data for all of the specified marketplaces, unless the report type indicates otherwise. | 

