# AmzSpApi::FulfillmentInboundApiModel::SelectedDeliveryWindow

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**availability_type** | **String** | The type of delivery window availability. Values: &#x60;AVAILABLE&#x60;, &#x60;BLOCKED&#x60;, &#x60;CONGESTED&#x60;, &#x60;DISCOUNTED&#x60; | 
**delivery_window_option_id** | **String** | Identifier of a delivery window option. A delivery window option represent one option for when a shipment is expected to be delivered. | 
**editable_until** | **DateTime** | The timestamp at which this Window can no longer be edited. | [optional] 
**end_date** | **DateTime** | The end timestamp of the window. | 
**start_date** | **DateTime** | The start timestamp of the window. | 

