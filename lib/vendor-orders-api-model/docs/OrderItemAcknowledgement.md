# AmzSpApi::VendorOrdersApiModel::OrderItemAcknowledgement

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**acknowledgement_code** | **String** | This indicates the acknowledgement code. | 
**acknowledged_quantity** | [**ItemQuantity**](ItemQuantity.md) |  | 
**scheduled_ship_date** | **DateTime** | Estimated ship date per line item. Must be in ISO-8601 date/time format. | [optional] 
**scheduled_delivery_date** | **DateTime** | Estimated delivery date per line item. Must be in ISO-8601 date/time format. | [optional] 
**rejection_reason** | **String** | Indicates the reason for rejection. | [optional] 

