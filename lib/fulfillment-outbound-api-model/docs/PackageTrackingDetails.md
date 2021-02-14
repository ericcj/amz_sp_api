# AmzSpApi::FulfillmentOutboundApiModel::PackageTrackingDetails

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**package_number** | **Integer** | The package identifier. | 
**tracking_number** | **String** | The tracking number for the package. | [optional] 
**customer_tracking_link** | **String** | Link on swiship.com that allows customers to track the package. | [optional] 
**carrier_code** | **String** | The name of the carrier. | [optional] 
**carrier_phone_number** | **String** | The phone number of the carrier. | [optional] 
**carrier_url** | **String** | The URL of the carrier’s website. | [optional] 
**ship_date** | [**Timestamp**](Timestamp.md) |  | [optional] 
**estimated_arrival_date** | [**Timestamp**](Timestamp.md) |  | [optional] 
**ship_to_address** | [**TrackingAddress**](TrackingAddress.md) |  | [optional] 
**current_status** | [**CurrentStatus**](CurrentStatus.md) |  | [optional] 
**current_status_description** | **String** | Description corresponding to the CurrentStatus value. | [optional] 
**signed_for_by** | **String** | The name of the person who signed for the package. | [optional] 
**additional_location_info** | [**AdditionalLocationInfo**](AdditionalLocationInfo.md) |  | [optional] 
**tracking_events** | [**TrackingEventList**](TrackingEventList.md) |  | [optional] 

