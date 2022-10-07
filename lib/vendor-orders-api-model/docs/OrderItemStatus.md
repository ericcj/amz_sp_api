# AmzSpApi::VendorOrdersApiModel::OrderItemStatus

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**item_sequence_number** | **String** | Numbering of the item on the purchase order. The first item will be 1, the second 2, and so on. | 
**buyer_product_identifier** | **String** | Buyer&#x27;s Standard Identification Number (ASIN) of an item. | [optional] 
**vendor_product_identifier** | **String** | The vendor selected product identification of the item. | [optional] 
**net_cost** | [**Money**](Money.md) |  | [optional] 
**list_price** | [**Money**](Money.md) |  | [optional] 
**ordered_quantity** | [**OrderItemStatusOrderedQuantity**](OrderItemStatusOrderedQuantity.md) |  | [optional] 
**acknowledgement_status** | [**OrderItemStatusAcknowledgementStatus**](OrderItemStatusAcknowledgementStatus.md) |  | [optional] 
**receiving_status** | [**OrderItemStatusReceivingStatus**](OrderItemStatusReceivingStatus.md) |  | [optional] 

