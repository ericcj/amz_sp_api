# AmzSpApi::FulfillmentOutboundApiModel::CreateFulfillmentOrderItem

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**seller_sku** | **String** | The seller SKU of the item. | 
**seller_fulfillment_order_item_id** | **String** | A fulfillment order item identifier that the seller creates to track fulfillment order items. Used to disambiguate multiple fulfillment items that have the same &#x60;sellerSku&#x60; value. For example, the seller might assign different &#x60;sellerFulfillmentOrderItemId&#x60; values to two items in a fulfillment order that share the same &#x60;sellerSku&#x60; value but have different &#x60;giftMessage&#x60; values. | 
**quantity** | [**Quantity**](Quantity.md) |  | 
**gift_message** | **String** | A message to the gift recipient, if applicable. | [optional] 
**displayable_comment** | **String** | Item-specific text that displays in recipient-facing materials such as the outbound shipment packing slip. | [optional] 
**fulfillment_network_sku** | **String** | Amazon&#x27;s fulfillment network SKU of the item. | [optional] 
**per_unit_declared_value** | [**Money**](Money.md) |  | [optional] 
**per_unit_price** | [**Money**](Money.md) |  | [optional] 
**per_unit_tax** | [**Money**](Money.md) |  | [optional] 

