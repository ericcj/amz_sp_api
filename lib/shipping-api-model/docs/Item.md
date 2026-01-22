# AmzSpApi::ShippingApiModel::Item

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**item_value** | [**Currency**](Currency.md) |  | [optional] 
**description** | **String** | The product description of the item. | [optional] 
**item_identifier** | **String** | A unique identifier for an item provided by the client. | [optional] 
**quantity** | **Integer** | The number of units. This value is required. | 
**weight** | [**Weight**](Weight.md) |  | [optional] 
**liquid_volume** | [**LiquidVolume**](LiquidVolume.md) |  | [optional] 
**is_hazmat** | **BOOLEAN** | When true, the item qualifies as hazardous materials (hazmat). Defaults to false. | [optional] 
**dangerous_goods_details** | [**DangerousGoodsDetails**](DangerousGoodsDetails.md) |  | [optional] 
**product_type** | **String** | The product type of the item. | [optional] 
**invoice_details** | [**InvoiceDetails**](InvoiceDetails.md) |  | [optional] 
**serial_numbers** | **Array&lt;String&gt;** | A list of unique serial numbers in an Amazon package that can be used to guarantee non-fraudulent items. The number of serial numbers in the list must be less than or equal to the quantity of items being shipped. Only applicable when channel source is Amazon. | [optional] 
**direct_fulfillment_item_identifiers** | [**DirectFulfillmentItemIdentifiers**](DirectFulfillmentItemIdentifiers.md) |  | [optional] 

