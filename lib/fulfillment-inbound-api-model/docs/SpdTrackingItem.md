# AmzSpApi::FulfillmentInboundApiModel::SpdTrackingItem

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**box_id** | **String** | The ID provided by Amazon that identifies a given box. This ID is comprised of the external shipment ID (which is generated after transportation has been confirmed) and the index of the box. | [optional] 
**tracking_id** | **String** | The tracking ID associated with each box in a non-Amazon partnered Small Parcel Delivery (SPD) shipment. | [optional] 
**tracking_number_validation_status** | **String** | Indicates whether Amazon has validated the tracking number. Because shipment validation is asynchronous, tracking IDs might not be validated immediately, and the status might change after a few hours. If more than 24 hours have passed and the status is not yet &#x27;VALIDATED&#x27; or &#x60;NOT_SUPPORTED&#x60;, verify the number and update it if necessary. **Possible values:** &#x60;VALIDATED&#x60;, &#x60;NOT_VALIDATED&#x60;, &#x60;NOT_SUPPORTED&#x60; (Amazon is unable to find tracking information for the provided tracking ID). | [optional] 

