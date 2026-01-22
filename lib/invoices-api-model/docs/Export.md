# AmzSpApi::InvoicesApiModel::Export

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**error_message** | **String** | When the export generation fails, this attribute contains a description of the error. | [optional] 
**export_id** | **String** | The export identifier. | [optional] 
**generate_export_finished_at** | **DateTime** | The date and time when the export generation finished. Vales are in [ISO 8601](https://developer-docs.amazon.com/sp-api/docs/iso-8601) date-time format. | [optional] 
**generate_export_started_at** | **DateTime** | The date and time when the export generation started. Values are in [ISO 8601](https://developer-docs.amazon.com/sp-api/docs/iso-8601) date-time format. | [optional] 
**invoices_document_ids** | **Array&lt;String&gt;** | The identifier for the export documents. To get the information required to retrieve the export document&#x27;s contents, pass each ID in the &#x60;getInvoicesDocument&#x60; operation.  This list is empty until the status is &#x60;DONE&#x60;. | [optional] 
**status** | [**ExportStatus**](ExportStatus.md) |  | [optional] 

