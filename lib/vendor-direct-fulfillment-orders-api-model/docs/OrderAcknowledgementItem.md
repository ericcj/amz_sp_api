# AmzSpApi::VendorDirectFulfillmentOrdersApiModel::OrderAcknowledgementItem

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**purchase_order_number** | **String** | The purchase order number for this order. Formatting Notes: alpha-numeric code. | 
**vendor_order_number** | **String** | The vendor&#x27;s order number for this order. | 
**acknowledgement_date** | **DateTime** | The date and time when the order is acknowledged, in ISO-8601 date/time format. For example: 2018-07-16T23:00:00Z / 2018-07-16T23:00:00-05:00 / 2018-07-16T23:00:00-08:00. | 
**acknowledgement_status** | [**AcknowledgementStatus**](AcknowledgementStatus.md) |  | 
**selling_party** | [**PartyIdentification**](PartyIdentification.md) |  | 
**ship_from_party** | [**PartyIdentification**](PartyIdentification.md) |  | 
**item_acknowledgements** | [**Array&lt;OrderItemAcknowledgement&gt;**](OrderItemAcknowledgement.md) | Item details including acknowledged quantity. | 

