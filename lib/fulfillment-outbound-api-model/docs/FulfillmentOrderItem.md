# AmzSpApi::FulfillmentOutboundApiModel::FulfillmentOrderItem

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**seller_sku** | **String** | The seller SKU of the item. | 
**seller_fulfillment_order_item_id** | **String** | A fulfillment order item identifier submitted with a call to the createFulfillmentOrder operation. | 
**quantity** | [**Quantity**](Quantity.md) |  | 
**gift_message** | **String** | A message to the gift recipient, if applicable. | [optional] 
**displayable_comment** | **String** | Item-specific text that displays in recipient-facing materials such as the outbound shipment packing slip. | [optional] 
**fulfillment_network_sku** | **String** | Amazon&#x27;s fulfillment network SKU of the item. | [optional] 
**order_item_disposition** | **String** | Indicates whether the item is sellable or unsellable. | [optional] 
**cancelled_quantity** | [**Quantity**](Quantity.md) |  | 
**unfulfillable_quantity** | [**Quantity**](Quantity.md) |  | 
**estimated_ship_date** | [**Timestamp**](Timestamp.md) |  | [optional] 
**estimated_arrival_date** | [**Timestamp**](Timestamp.md) |  | [optional] 
**per_unit_price** | [**Money**](Money.md) |  | [optional] 
**per_unit_tax** | [**Money**](Money.md) |  | [optional] 
**per_unit_declared_value** | [**Money**](Money.md) |  | [optional] 

