# AmzSpApi::AmazonWarehousingAndDistributionModel::InboundOrder

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**created_at** | **DateTime** | Date when this order was created. | 
**destination_details** | [**DestinationDetails**](DestinationDetails.md) |  | [optional] 
**external_reference_id** | **String** | Reference ID that can be used to correlate the order with partner resources. | [optional] 
**order_id** | **String** | Inbound order ID. | 
**order_status** | [**InboundStatus**](InboundStatus.md) |  | 
**origin_address** | [**Address**](Address.md) |  | 
**packages_to_inbound** | [**Array&lt;DistributionPackageQuantity&gt;**](DistributionPackageQuantity.md) | List of packages to be inbounded. | 
**preferences** | [**InboundPreferences**](InboundPreferences.md) |  | [optional] 
**updated_at** | **DateTime** | Date when this order was last updated. | [optional] 

