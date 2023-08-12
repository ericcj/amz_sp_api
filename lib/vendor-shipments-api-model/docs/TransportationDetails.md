# AmzSpApi::VendorShipmentsApiModel::TransportationDetails

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ship_mode** | **String** | The type of shipment. | [optional] 
**transportation_mode** | **String** | The mode of transportation for this shipment. | [optional] 
**shipped_date** | **DateTime** | Date when shipment is performed by the Vendor to Buyer | [optional] 
**estimated_delivery_date** | **DateTime** | Estimated Date on which shipment will be delivered from Vendor to Buyer | [optional] 
**shipment_delivery_date** | **DateTime** | Date on which shipment will be delivered from Vendor to Buyer | [optional] 
**carrier_details** | [**CarrierDetails**](CarrierDetails.md) |  | [optional] 
**bill_of_lading_number** | **String** | Bill Of Lading (BOL) number is the unique number assigned by the vendor. The BOL present in the Shipment Confirmation message ideally matches the paper BOL provided with the shipment, but that is no must. Instead of BOL, an alternative reference number (like Delivery Note Number) for the shipment can also be sent in this field. | [optional] 

