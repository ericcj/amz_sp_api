# AmzSpApi::MessagingApiModel::CreateWarrantyRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**attachments** | [**Array&lt;Attachment&gt;**](Attachment.md) | Attachments to include in the message to the buyer. If any text is included in the attachment, the text must be written in the buyer&#x27;s language of preference, which can be retrieved from the GetAttributes operation. | [optional] 
**coverage_start_date** | **DateTime** | The start date of the warranty coverage to include in the message to the buyer. | [optional] 
**coverage_end_date** | **DateTime** | The end date of the warranty coverage to include in the message to the buyer. | [optional] 

