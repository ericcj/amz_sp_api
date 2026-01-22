# AmzSpApi::MerchantFulfillmentApiModel::RejectedShippingService

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**carrier_name** | **String** | The rejected shipping carrier name. For example, USPS. | 
**shipping_service_name** | **String** | The rejected shipping service localized name. For example, FedEx Standard Overnight. | 
**shipping_service_id** | [**ShippingServiceIdentifier**](ShippingServiceIdentifier.md) |  | 
**rejection_reason_code** | **String** | A reason code meant to be consumed programatically. For example, &#x60;CARRIER_CANNOT_SHIP_TO_POBOX&#x60;. | 
**rejection_reason_message** | **String** | A localized human readable description of the rejected reason. | [optional] 

