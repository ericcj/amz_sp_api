# AmzSpApi::FulfillmentInboundApiModelV0::InboundShipmentInfo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**shipment_id** | **String** | The shipment identifier submitted in the request. | [optional] 
**shipment_name** | **String** | The name for the inbound shipment. | [optional] 
**ship_from_address** | [**Address**](Address.md) |  | 
**destination_fulfillment_center_id** | **String** | An Amazon fulfillment center identifier created by Amazon. | [optional] 
**shipment_status** | [**ShipmentStatus**](ShipmentStatus.md) |  | [optional] 
**label_prep_type** | [**LabelPrepType**](LabelPrepType.md) |  | [optional] 
**are_cases_required** | **BOOLEAN** | Indicates whether or not an inbound shipment contains case-packed boxes. When AreCasesRequired &#x3D; true for an inbound shipment, all items in the inbound shipment must be case packed. | 
**confirmed_need_by_date** | [**DateStringType**](DateStringType.md) |  | [optional] 
**box_contents_source** | [**BoxContentsSource**](BoxContentsSource.md) |  | [optional] 
**estimated_box_contents_fee** | [**BoxContentsFeeDetails**](BoxContentsFeeDetails.md) |  | [optional] 

