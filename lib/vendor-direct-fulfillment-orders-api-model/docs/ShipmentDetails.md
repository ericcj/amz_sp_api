# AmzSpApi::VendorDirectFulfillmentOrdersApiModel::ShipmentDetails

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**is_priority_shipment** | **BOOLEAN** | When true, this is a priority shipment. | 
**is_scheduled_delivery_shipment** | **BOOLEAN** | When true, this order is part of a scheduled delivery program. | [optional] 
**is_pslip_required** | **BOOLEAN** | When true, a packing slip is required to be sent to the customer. | 
**is_gift** | **BOOLEAN** | When true, the order contain a gift. Include the gift message and gift wrap information. | [optional] 
**ship_method** | **String** | Ship method to be used for shipping the order. Amazon defines ship method codes indicating the shipping carrier and shipment service level. To see the full list of ship methods in use, including both the code and the friendly name, search the &#x27;Help&#x27; section on Vendor Central for &#x27;ship methods&#x27;. | 
**shipment_dates** | [**ShipmentDates**](ShipmentDates.md) |  | 
**message_to_customer** | **String** | Message to customer for order status. | 

