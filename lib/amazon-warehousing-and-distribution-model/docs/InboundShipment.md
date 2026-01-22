# AmzSpApi::AmazonWarehousingAndDistributionModel::InboundShipment

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**carrier_code** | [**CarrierCode**](CarrierCode.md) |  | [optional] 
**created_at** | **DateTime** | Timestamp when the shipment was created. The date is returned in &lt;a href&#x3D;&#x27;https://developer-docs.amazon.com/sp-api/docs/iso-8601&#x27;&gt;ISO 8601&lt;/a&gt; format. | [optional] 
**destination_address** | [**Address**](Address.md) |  | 
**external_reference_id** | **String** | Client-provided reference ID that can correlate this shipment to client resources. For example, to map this shipment to an internal bookkeeping order record. | [optional] 
**order_id** | **String** | The AWD inbound order ID that this inbound shipment belongs to. | 
**origin_address** | [**Address**](Address.md) |  | 
**received_quantity** | [**Array&lt;InventoryQuantity&gt;**](InventoryQuantity.md) | Quantity received (at the receiving end) as part of this shipment. | [optional] 
**ship_by** | **DateTime** | Timestamp when the shipment will be shipped. | [optional] 
**shipment_container_quantities** | [**Array&lt;DistributionPackageQuantity&gt;**](DistributionPackageQuantity.md) | Packages that are part of this shipment. | 
**shipment_id** | **String** | Unique shipment ID. | 
**shipment_sku_quantities** | [**Array&lt;SkuQuantity&gt;**](SkuQuantity.md) | Quantity details at SKU level for the shipment. This attribute will only appear if the skuQuantities parameter in the request is set to SHOW. | [optional] 
**destination_region** | **String** | Assigned region where the order will be shipped. This can differ from what was passed as preference. AWD currently supports following region IDs: [us-west, us-east, us-southcentral, us-southeast] | [optional] 
**shipment_status** | [**InboundShipmentStatus**](InboundShipmentStatus.md) |  | 
**tracking_id** | **String** | Carrier-unique tracking ID for this shipment. | [optional] 
**updated_at** | **DateTime** | Timestamp when the shipment was updated. The date is returned in &lt;a href&#x3D;&#x27;https://developer-docs.amazon.com/sp-api/docs/iso-8601&#x27;&gt;ISO 8601&lt;/a&gt; format. | [optional] 
**warehouse_reference_id** | **String** | An AWD-provided reference ID that you can use to interact with the warehouse. For example, a carrier appointment booking. | [optional] 

