# AmzSpApi::VendorOrdersApiModel::OrderStatus

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**purchase_order_number** | **String** | The buyer&#x27;s purchase order number for this order. Formatting Notes: 8-character alpha-numeric code. | 
**purchase_order_status** | **String** | The status of the buyer&#x27;s purchase order for this order. | 
**purchase_order_date** | **DateTime** | The date the purchase order was placed. Must be in ISO-8601 date/time format. | 
**last_updated_date** | **DateTime** | The date when the purchase order was last updated. Must be in ISO-8601 date/time format. | [optional] 
**selling_party** | [**PartyIdentification**](PartyIdentification.md) |  | 
**ship_to_party** | [**PartyIdentification**](PartyIdentification.md) |  | 
**item_status** | [**ItemStatus**](ItemStatus.md) |  | 

