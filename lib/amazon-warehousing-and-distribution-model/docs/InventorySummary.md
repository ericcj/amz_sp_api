# AmzSpApi::AmazonWarehousingAndDistributionModel::InventorySummary

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**expiration_details** | [**Array&lt;ExpirationDetails&gt;**](ExpirationDetails.md) | The expiration details of the inventory. This object will only appear if the &#x60;details&#x60; parameter in the request is set to &#x60;SHOW&#x60;. | [optional] 
**inventory_details** | [**InventoryDetails**](InventoryDetails.md) |  | [optional] 
**sku** | **String** | The seller or merchant SKU. | 
**total_inbound_quantity** | **Integer** | Total quantity that is in-transit from the seller and has not yet been received at an AWD Distribution Center | [optional] 
**total_onhand_quantity** | **Integer** | Total quantity that is present in AWD distribution centers. | [optional] 

