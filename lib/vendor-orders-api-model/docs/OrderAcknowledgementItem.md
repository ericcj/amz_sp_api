# AmzSpApi::VendorOrdersApiModel::OrderAcknowledgementItem

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**item_sequence_number** | **String** | Line item sequence number for the item. | [optional] 
**amazon_product_identifier** | **String** | Amazon Standard Identification Number (ASIN) of an item. | [optional] 
**vendor_product_identifier** | **String** | The vendor selected product identification of the item. Should be the same as was sent in the purchase order. | [optional] 
**ordered_quantity** | [**ItemQuantity**](ItemQuantity.md) |  | 
**net_cost** | [**Money**](Money.md) |  | [optional] 
**list_price** | [**Money**](Money.md) |  | [optional] 
**discount_multiplier** | **String** | The discount multiplier that should be applied to the price if a vendor sells books with a list price. This is a multiplier factor to arrive at a final discounted price. A multiplier of .90 would be the factor if a 10% discount is given. | [optional] 
**item_acknowledgements** | [**Array&lt;OrderItemAcknowledgement&gt;**](OrderItemAcknowledgement.md) | This is used to indicate acknowledged quantity. | 

