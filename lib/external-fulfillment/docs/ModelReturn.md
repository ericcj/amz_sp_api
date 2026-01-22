# AmzSpApi::ExternalFulfillment::ModelReturn

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The return item&#x27;s ID. | 
**return_location_id** | **String** | The SmartConnect identifier for where the return item was dropped for delivery. | [optional] 
**merchant_sku** | **String** | The seller&#x27;s identifier for the SKU. | [optional] 
**return_type** | **String** | The type of return. | 
**return_sub_type** | **String** | The sub-type of return. | [optional] 
**number_of_units** | **Integer** | The total number of units in the return. | [optional] 
**status** | **String** | The current status of the return. | 
**fulfillment_location_id** | **String** | The ID of the location that fulfilled the order. | 
**creation_date_time** | **DateTime** |  | [optional] 
**last_updated_date_time** | **DateTime** |  | 
**return_metadata** | [**ReturnMetadata**](ReturnMetadata.md) |  | 
**return_shipping_info** | [**ReturnShippingInfo**](ReturnShippingInfo.md) |  | 
**marketplace_channel_details** | [**MarketplaceChannelDetails**](MarketplaceChannelDetails.md) |  | 
**otp_details** | [**OtpDetails**](OtpDetails.md) |  | [optional] 
**package_delivery_mode** | **String** | The package delivery mode. This indicates whether the return was delivered to the seller with or without a one-time password (OTP). | [optional] 
**replanning_details** | [**ReplanningDetails**](ReplanningDetails.md) |  | [optional] 

