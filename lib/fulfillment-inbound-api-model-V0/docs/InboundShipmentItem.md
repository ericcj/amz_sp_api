# AmzSpApi::FulfillmentInboundApiModelV0::InboundShipmentItem

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**shipment_id** | **String** | A shipment identifier originally returned by the createInboundShipmentPlan operation. | [optional] 
**seller_sku** | **String** | The seller SKU of the item. | 
**fulfillment_network_sku** | **String** | Amazon&#x27;s fulfillment network SKU of the item. | [optional] 
**quantity_shipped** | [**Quantity**](Quantity.md) |  | 
**quantity_received** | [**Quantity**](Quantity.md) |  | [optional] 
**quantity_in_case** | [**Quantity**](Quantity.md) |  | [optional] 
**release_date** | [**DateStringType**](DateStringType.md) |  | [optional] 
**prep_details_list** | [**PrepDetailsList**](PrepDetailsList.md) |  | [optional] 

