# AmzSpApi::FulfillmentOutboundApiModel::ReturnItem

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**seller_return_item_id** | **String** | An identifier the seller assigns to the return item. | 
**seller_fulfillment_order_item_id** | **String** | The identifier assigned to the item by the seller when the fulfillment order was created. | 
**amazon_shipment_id** | **String** | The identifier for the shipment that is associated with the return item. | 
**seller_return_reason_code** | **String** | The return reason code assigned to the return item by the seller. | 
**return_comment** | **String** | An optional comment about the return item. | [optional] 
**amazon_return_reason_code** | **String** | The return reason code that the Amazon fulfillment center assigned to the return item. | [optional] 
**status** | [**FulfillmentReturnItemStatus**](FulfillmentReturnItemStatus.md) |  | 
**status_changed_date** | [**Timestamp**](Timestamp.md) |  | 
**return_authorization_id** | **String** | Identifies the return authorization used to return this item. Refer to &#x60;ReturnAuthorization&#x60;. | [optional] 
**return_received_condition** | [**ReturnItemDisposition**](ReturnItemDisposition.md) |  | [optional] 
**fulfillment_center_id** | **String** | The identifier for the Amazon fulfillment center that processed the return item. | [optional] 

