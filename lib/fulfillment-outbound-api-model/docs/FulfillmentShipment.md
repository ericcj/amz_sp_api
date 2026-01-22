# AmzSpApi::FulfillmentOutboundApiModel::FulfillmentShipment

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**amazon_shipment_id** | **String** | A shipment identifier assigned by Amazon. | 
**fulfillment_center_id** | **String** | An identifier for the fulfillment center from which the shipment is sent. | 
**fulfillment_shipment_status** | **String** | The current status of the shipment. | 
**shipping_date** | [**Timestamp**](Timestamp.md) |  | [optional] 
**estimated_arrival_date** | [**Timestamp**](Timestamp.md) |  | [optional] 
**shipping_notes** | **Array&lt;String&gt;** | Provides additional insight into shipment timeline. Primarily used to communicate that actual delivery dates aren&#x27;t available. | [optional] 
**fulfillment_shipment_item** | [**FulfillmentShipmentItemList**](FulfillmentShipmentItemList.md) |  | 
**fulfillment_shipment_package** | [**FulfillmentShipmentPackageList**](FulfillmentShipmentPackageList.md) |  | [optional] 

