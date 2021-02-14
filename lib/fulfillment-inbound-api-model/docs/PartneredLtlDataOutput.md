# AmzSpApi::FulfillmentInboundApiModel::PartneredLtlDataOutput

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**contact** | [**Contact**](Contact.md) |  | 
**box_count** | [**UnsignedIntType**](UnsignedIntType.md) |  | 
**seller_freight_class** | [**SellerFreightClass**](SellerFreightClass.md) |  | [optional] 
**freight_ready_date** | [**DateStringType**](DateStringType.md) |  | 
**pallet_list** | [**PalletList**](PalletList.md) |  | 
**total_weight** | [**Weight**](Weight.md) |  | 
**seller_declared_value** | [**Amount**](Amount.md) |  | [optional] 
**amazon_calculated_value** | [**Amount**](Amount.md) |  | [optional] 
**preview_pickup_date** | [**DateStringType**](DateStringType.md) |  | 
**preview_delivery_date** | [**DateStringType**](DateStringType.md) |  | 
**preview_freight_class** | [**SellerFreightClass**](SellerFreightClass.md) |  | 
**amazon_reference_id** | **String** | A unique identifier created by Amazon that identifies this Amazon-partnered, Less Than Truckload/Full Truckload (LTL/FTL) shipment. | 
**is_bill_of_lading_available** | **BOOLEAN** | Indicates whether the bill of lading for the shipment is available. | 
**partnered_estimate** | [**PartneredEstimate**](PartneredEstimate.md) |  | [optional] 
**carrier_name** | **String** | The carrier for the inbound shipment. | 

