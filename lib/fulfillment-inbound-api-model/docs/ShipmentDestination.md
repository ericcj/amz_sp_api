# AmzSpApi::FulfillmentInboundApiModel::ShipmentDestination

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**address** | [**Address**](Address.md) |  | [optional] 
**destination_type** | **String** | The type of destination for this shipment. Possible values: &#x60;AMAZON_OPTIMIZED&#x60;, &#x60;AMAZON_WAREHOUSE&#x60;. | 
**warehouse_id** | **String** | The warehouse that the shipment should be sent to. This can be empty if the destination type is &#x60;AMAZON_OPTIMIZED&#x60;. | [optional] 

