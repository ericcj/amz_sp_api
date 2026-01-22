# AmzSpApi::AmazonWarehousingAndDistributionModel::InboundShipmentSummary

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**created_at** | **DateTime** | Timestamp when the shipment was created. | [optional] 
**external_reference_id** | **String** | Optional client-provided reference ID that can be used to correlate this shipment with client resources. For example, to map this shipment to an internal bookkeeping order record. | [optional] 
**order_id** | **String** | The AWD inbound order ID that this inbound shipment belongs to. | 
**shipment_id** | **String** | A unique shipment ID. | 
**shipment_status** | [**InboundShipmentStatus**](InboundShipmentStatus.md) |  | 
**updated_at** | **DateTime** | Timestamp when the shipment was updated. | [optional] 

