# AmzSpApi::FinancesApiModel::ShipmentEvent

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**amazon_order_id** | **String** | An Amazon-defined identifier for an order. | [optional] 
**seller_order_id** | **String** | A seller-defined identifier for an order. | [optional] 
**marketplace_name** | **String** | The name of the marketplace where the event occurred. | [optional] 
**order_charge_list** | [**ChargeComponentList**](ChargeComponentList.md) |  | [optional] 
**order_charge_adjustment_list** | [**ChargeComponentList**](ChargeComponentList.md) |  | [optional] 
**shipment_fee_list** | [**FeeComponentList**](FeeComponentList.md) |  | [optional] 
**shipment_fee_adjustment_list** | [**FeeComponentList**](FeeComponentList.md) |  | [optional] 
**order_fee_list** | [**FeeComponentList**](FeeComponentList.md) |  | [optional] 
**order_fee_adjustment_list** | [**FeeComponentList**](FeeComponentList.md) |  | [optional] 
**direct_payment_list** | [**DirectPaymentList**](DirectPaymentList.md) |  | [optional] 
**posted_date** | **Date** |  | [optional] 
**shipment_item_list** | [**ShipmentItemList**](ShipmentItemList.md) |  | [optional] 
**shipment_item_adjustment_list** | [**ShipmentItemList**](ShipmentItemList.md) |  | [optional] 

