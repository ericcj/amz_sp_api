# AmzSpApi::VendorDirectFulfillmentOrdersApiModel::OrderItem

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**item_sequence_number** | **String** | Numbering of the item on the purchase order. The first item will be 1, the second 2, and so on. | 
**buyer_product_identifier** | **String** | Buyer&#x27;s standard identification number (ASIN) of an item. | [optional] 
**vendor_product_identifier** | **String** | The vendor selected product identification of the item. | [optional] 
**title** | **String** | Title for the item. | [optional] 
**ordered_quantity** | [**ItemQuantity**](ItemQuantity.md) |  | 
**scheduled_delivery_shipment** | [**ScheduledDeliveryShipment**](ScheduledDeliveryShipment.md) |  | [optional] 
**gift_details** | [**GiftDetails**](GiftDetails.md) |  | [optional] 
**net_price** | [**Money**](Money.md) |  | 
**tax_details** | [**TaxItemDetails**](TaxItemDetails.md) |  | [optional] 
**total_price** | [**Money**](Money.md) |  | [optional] 

