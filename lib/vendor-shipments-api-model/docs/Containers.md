# AmzSpApi::VendorShipmentsApiModel::Containers

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**container_type** | **String** | The type of container. | 
**container_sequence_number** | **String** | An integer that must be submitted for multi-box shipments only, where one item may come in separate packages. | [optional] 
**container_identifiers** | [**Array&lt;ContainerIdentification&gt;**](ContainerIdentification.md) | A list of carton identifiers. | 
**tracking_number** | **String** | The tracking number used for identifying the shipment. | [optional] 
**dimensions** | [**Dimensions**](Dimensions.md) |  | [optional] 
**weight** | [**Weight**](Weight.md) |  | [optional] 
**tier** | **Integer** | Number of layers per pallet. | [optional] 
**block** | **Integer** | Number of cartons per layer on the pallet. | [optional] 
**inner_containers_details** | [**InnerContainersDetails**](InnerContainersDetails.md) |  | [optional] 
**packed_items** | [**Array&lt;PackedItems&gt;**](PackedItems.md) | A list of packed items. | [optional] 

