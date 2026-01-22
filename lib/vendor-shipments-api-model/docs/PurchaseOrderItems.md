# AmzSpApi::VendorShipmentsApiModel::PurchaseOrderItems

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**item_sequence_number** | **String** | Item sequence number for the item. The first item will be 001, the second 002, and so on. This number is used as a reference to refer to this item from the carton or pallet level. | 
**buyer_product_identifier** | **String** | Amazon Standard Identification Number (ASIN) for a SKU | [optional] 
**vendor_product_identifier** | **String** | The vendor selected product identification of the item. Should be the same as was sent in the purchase order. | [optional] 
**shipped_quantity** | [**ItemQuantity**](ItemQuantity.md) |  | 
**maximum_retail_price** | [**Money**](Money.md) |  | [optional] 

