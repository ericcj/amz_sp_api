# AmzSpApi::VendorDirectFulfillmentOrdersApiModel::OrderDetails

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**customer_order_number** | **String** | The customer order number. | 
**order_date** | **DateTime** | The date the order was placed. This  field is expected to be in ISO-8601 date/time format, for example:2018-07-16T23:00:00Z/ 2018-07-16T23:00:00-05:00 /2018-07-16T23:00:00-08:00. If no time zone is specified, UTC should be assumed. | 
**order_status** | **String** | Current status of the order. | [optional] 
**shipment_details** | [**ShipmentDetails**](ShipmentDetails.md) |  | 
**tax_total** | [**TaxItemDetails**](TaxItemDetails.md) |  | [optional] 
**selling_party** | [**PartyIdentification**](PartyIdentification.md) |  | 
**ship_from_party** | [**PartyIdentification**](PartyIdentification.md) |  | 
**ship_to_party** | [**Address**](Address.md) |  | 
**bill_to_party** | [**PartyIdentification**](PartyIdentification.md) |  | 
**items** | [**Array&lt;OrderItem&gt;**](OrderItem.md) | A list of items in this purchase order. | 

