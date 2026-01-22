# AmzSpApi::ShippingApiModel::DirectFulfillmentItemIdentifiers

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**line_item_id** | **String** | A unique identifier for an item provided by the client for a direct fulfillment shipment. This is only populated for direct fulfillment multi-piece shipments. It is required if a vendor wants to change the configuration of the packages in which the purchase order is shipped. | 
**piece_number** | **String** | A unique identifier for an item provided by the client for a direct fulfillment shipment. This is only populated if a single line item has multiple pieces. Defaults to 1. | [optional] 

