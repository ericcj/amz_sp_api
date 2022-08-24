# AmzSpApi::VendorOrdersApiModel::OrderAcknowledgement

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**purchase_order_number** | **String** | The purchase order number. Formatting Notes: 8-character alpha-numeric code. | 
**selling_party** | [**PartyIdentification**](PartyIdentification.md) |  | 
**acknowledgement_date** | **DateTime** | The date and time when the purchase order is acknowledged, in ISO-8601 date/time format. | 
**items** | [**Array&lt;OrderAcknowledgementItem&gt;**](OrderAcknowledgementItem.md) | A list of the items being acknowledged with associated details. | 

