# AmzSpApi::FulfillmentOutboundApiModel::UpdateFulfillmentOrderItem

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**seller_sku** | **String** | The seller SKU of the item. | [optional] 
**seller_fulfillment_order_item_id** | **String** | Identifies the fulfillment order item to update. Created with a previous call to the &#x60;createFulfillmentOrder&#x60; operation. | 
**quantity** | [**Quantity**](Quantity.md) |  | 
**gift_message** | **String** | A message to the gift recipient, if applicable. | [optional] 
**displayable_comment** | **String** | Item-specific text that displays in recipient-facing materials such as the outbound shipment packing slip. | [optional] 
**fulfillment_network_sku** | **String** | Amazon&#x27;s fulfillment network SKU of the item. | [optional] 
**order_item_disposition** | **String** | Indicates whether the item is sellable or unsellable. | [optional] 
**per_unit_declared_value** | [**Money**](Money.md) |  | [optional] 
**per_unit_price** | [**Money**](Money.md) |  | [optional] 
**per_unit_tax** | [**Money**](Money.md) |  | [optional] 

