# AmzSpApi::FulfillmentInboundApiModel::InboundShipmentPlan

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**shipment_id** | **String** | A shipment identifier originally returned by the createInboundShipmentPlan operation. | 
**destination_fulfillment_center_id** | **String** | An Amazon fulfillment center identifier created by Amazon. | 
**ship_to_address** | [**Address**](Address.md) |  | 
**label_prep_type** | [**LabelPrepType**](LabelPrepType.md) |  | 
**items** | [**InboundShipmentPlanItemList**](InboundShipmentPlanItemList.md) |  | 
**estimated_box_contents_fee** | [**BoxContentsFeeDetails**](BoxContentsFeeDetails.md) |  | [optional] 

