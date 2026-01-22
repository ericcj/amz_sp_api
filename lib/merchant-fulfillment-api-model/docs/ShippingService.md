# AmzSpApi::MerchantFulfillmentApiModel::ShippingService

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**shipping_service_name** | **String** | A plain text representation of a carrier&#x27;s shipping service. For example, \&quot;UPS Ground\&quot; or \&quot;FedEx Standard Overnight\&quot;.  | 
**carrier_name** | **String** | The name of the carrier. | 
**shipping_service_id** | [**ShippingServiceIdentifier**](ShippingServiceIdentifier.md) |  | 
**shipping_service_offer_id** | **String** | An Amazon-defined shipping service offer identifier. | 
**ship_date** | [**Timestamp**](Timestamp.md) |  | 
**earliest_estimated_delivery_date** | [**Timestamp**](Timestamp.md) |  | [optional] 
**latest_estimated_delivery_date** | [**Timestamp**](Timestamp.md) |  | [optional] 
**rate** | [**CurrencyAmount**](CurrencyAmount.md) |  | 
**rate_with_adjustments** | [**CurrencyAmount**](CurrencyAmount.md) |  | 
**adjustment_item_list** | [**AdjustmentItemList**](AdjustmentItemList.md) |  | [optional] 
**shipping_service_options** | [**ShippingServiceOptions**](ShippingServiceOptions.md) |  | 
**available_shipping_service_options** | [**AvailableShippingServiceOptions**](AvailableShippingServiceOptions.md) |  | [optional] 
**available_label_formats** | [**LabelFormatList**](LabelFormatList.md) |  | [optional] 
**available_format_options_for_label** | [**AvailableFormatOptionsForLabelList**](AvailableFormatOptionsForLabelList.md) |  | [optional] 
**requires_additional_seller_inputs** | **BOOLEAN** | When true, additional seller inputs are required. | 
**benefits** | [**Benefits**](Benefits.md) |  | [optional] 

