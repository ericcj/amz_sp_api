# AmzSpApi::ShippingApiModel::GetRatesRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ship_to** | [**Address**](Address.md) |  | [optional] 
**ship_from** | [**Address**](Address.md) |  | 
**return_to** | [**Address**](Address.md) |  | [optional] 
**ship_date** | **DateTime** | The ship date and time (the requested pickup). This defaults to the current date and time. | [optional] 
**shipper_instruction** | [**ShipperInstruction**](ShipperInstruction.md) |  | [optional] 
**packages** | [**PackageList**](PackageList.md) |  | 
**value_added_services** | [**ValueAddedServiceDetails**](ValueAddedServiceDetails.md) |  | [optional] 
**tax_details** | [**TaxDetailList**](TaxDetailList.md) |  | [optional] 
**channel_details** | [**ChannelDetails**](ChannelDetails.md) |  | 
**client_reference_details** | [**ClientReferenceDetails**](ClientReferenceDetails.md) |  | [optional] 
**shipment_type** | [**ShipmentType**](ShipmentType.md) |  | [optional] 
**destination_access_point_details** | [**AccessPointDetails**](AccessPointDetails.md) |  | [optional] 
**carrier_accounts** | [**CarrierAccounts**](CarrierAccounts.md) |  | [optional] 

