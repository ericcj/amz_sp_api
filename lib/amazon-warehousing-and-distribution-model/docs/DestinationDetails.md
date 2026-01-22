# AmzSpApi::AmazonWarehousingAndDistributionModel::DestinationDetails

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**destination_address** | [**Address**](Address.md) |  | [optional] 
**destination_region** | **String** | Assigned region where the order will be shipped. This can differ from what was passed as preference. AWD currently supports following region IDs: [us-west, us-east, us-southcentral, us-southeast] | [optional] 
**shipment_id** | **String** | Unique ID of the confirmed shipment being shipped to the assigned destination. This will be available only after an inbound order is confirmed and can be used to track the shipment. | [optional] 

