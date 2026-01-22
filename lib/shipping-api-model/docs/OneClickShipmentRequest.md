# AmzSpApi::ShippingApiModel::OneClickShipmentRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ship_to** | [**Address**](Address.md) |  | [optional] 
**ship_from** | [**Address**](Address.md) |  | 
**return_to** | [**Address**](Address.md) |  | [optional] 
**ship_date** | **DateTime** | The ship date and time (the requested pickup). This defaults to the current date and time. | [optional] 
**goods_owner** | [**GoodsOwner**](GoodsOwner.md) |  | [optional] 
**packages** | [**PackageList**](PackageList.md) |  | 
**value_added_services_details** | [**OneClickShipmentValueAddedServiceDetails**](OneClickShipmentValueAddedServiceDetails.md) |  | [optional] 
**tax_details** | [**TaxDetailList**](TaxDetailList.md) |  | [optional] 
**channel_details** | [**ChannelDetails**](ChannelDetails.md) |  | 
**label_specifications** | [**RequestedDocumentSpecification**](RequestedDocumentSpecification.md) |  | 
**service_selection** | [**ServiceSelection**](ServiceSelection.md) |  | 
**shipper_instruction** | [**ShipperInstruction**](ShipperInstruction.md) |  | [optional] 
**destination_access_point_details** | [**AccessPointDetails**](AccessPointDetails.md) |  | [optional] 

