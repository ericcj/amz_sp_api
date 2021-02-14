# AmzSpApi::FbaInventoryApiModel::ReservedQuantity

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**total_reserved_quantity** | **Integer** | The total number of units in Amazon&#x27;s fulfillment network that are currently being picked, packed, and shipped; or are sidelined for measurement, sampling, or other internal processes. | [optional] 
**pending_customer_order_quantity** | **Integer** | The number of units reserved for customer orders. | [optional] 
**pending_transshipment_quantity** | **Integer** | The number of units being transferred from one fulfillment center to another. | [optional] 
**fc_processing_quantity** | **Integer** | The number of units that have been sidelined at the fulfillment center for additional processing. | [optional] 

