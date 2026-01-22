# AmzSpApi::ListingsItemsApiModel::IssueExemption

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**status** | **String** | This field indicates the current exemption status for the listed enforcement actions. It can take values such as &#x60;EXEMPT&#x60;, signifying permanent exemption, &#x60;EXEMPT_UNTIL_EXPIRY_DATE&#x60; indicating temporary exemption until a specified date, or &#x60;NOT_EXEMPT&#x60; signifying no exemptions, and enforcement actions were already applied. | 
**expiry_date** | **DateTime** | Represents the timestamp, in ISO 8601 format, that specifies the date when the temporary exemptions expires, and Amazon begins enforcing the listed actions. | [optional] 

