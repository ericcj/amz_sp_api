# AmzSpApi::FinancesApiModel::RemovalShipmentAdjustmentEvent

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**posted_date** | **Date** |  | [optional] 
**adjustment_event_id** | **String** | The unique identifier for the adjustment event. | [optional] 
**merchant_order_id** | **String** | The merchant removal orderId. | [optional] 
**order_id** | **String** | The orderId for shipping inventory. | [optional] 
**transaction_type** | **String** | The type of removal order.  Possible values:  * WHOLESALE_LIQUIDATION. | [optional] 
**removal_shipment_item_adjustment_list** | [**Array&lt;RemovalShipmentItemAdjustment&gt;**](RemovalShipmentItemAdjustment.md) | A comma-delimited list of Removal shipmentItemAdjustment details for FBA inventory. | [optional] 

