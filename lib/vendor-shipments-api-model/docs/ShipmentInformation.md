# AmzSpApi::VendorShipmentsApiModel::ShipmentInformation

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**vendor_details** | [**VendorDetails**](VendorDetails.md) |  | [optional] 
**buyer_reference_number** | **String** | Buyer Reference number which is a unique number. | [optional] 
**ship_to_party** | [**PartyIdentification**](PartyIdentification.md) |  | [optional] 
**ship_from_party** | [**PartyIdentification**](PartyIdentification.md) |  | [optional] 
**warehouse_id** | **String** | Vendor Warehouse ID from where the shipment is scheduled to be picked up by buyer / Carrier. | [optional] 
**master_tracking_id** | **String** | Unique Id with  which  the shipment can be tracked for Small Parcels. | [optional] 
**total_label_count** | **Integer** | Number of Labels that are created as part of this shipment. | [optional] 
**ship_mode** | **String** | Type of shipment whether it is Small Parcel | [optional] 

