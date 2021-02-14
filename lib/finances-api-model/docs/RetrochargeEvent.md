# AmzSpApi::FinancesApiModel::RetrochargeEvent

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**retrocharge_event_type** | **String** | The type of event.  Possible values:  * Retrocharge  * RetrochargeReversal | [optional] 
**amazon_order_id** | **String** | An Amazon-defined identifier for an order. | [optional] 
**posted_date** | **Date** |  | [optional] 
**base_tax** | [**Currency**](Currency.md) |  | [optional] 
**shipping_tax** | [**Currency**](Currency.md) |  | [optional] 
**marketplace_name** | **String** | The name of the marketplace where the retrocharge event occurred. | [optional] 
**retrocharge_tax_withheld_list** | [**TaxWithheldComponentList**](TaxWithheldComponentList.md) |  | [optional] 

