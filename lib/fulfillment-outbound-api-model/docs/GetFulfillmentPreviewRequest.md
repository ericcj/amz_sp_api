# AmzSpApi::FulfillmentOutboundApiModel::GetFulfillmentPreviewRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**marketplace_id** | **String** | The marketplace the fulfillment order is placed against. | [optional] 
**address** | [**Address**](Address.md) |  | 
**items** | [**GetFulfillmentPreviewItemList**](GetFulfillmentPreviewItemList.md) |  | 
**shipping_speed_categories** | [**ShippingSpeedCategoryList**](ShippingSpeedCategoryList.md) |  | [optional] 
**include_cod_fulfillment_preview** | **BOOLEAN** | When true, returns all fulfillment order previews both for COD and not for COD. Otherwise, returns only fulfillment order previews that are not for COD. | [optional] 
**include_delivery_windows** | **BOOLEAN** | When true, returns the &#x60;ScheduledDeliveryInfo&#x60; response object, which contains the available delivery windows for a Scheduled Delivery. The &#x60;ScheduledDeliveryInfo&#x60; response object can only be returned for fulfillment order previews with &#x60;ShippingSpeedCategories&#x60; equal to &#x60;ScheduledDelivery&#x60;. | [optional] 
**feature_constraints** | [**Array&lt;FeatureSettings&gt;**](FeatureSettings.md) | A list of features and their fulfillment policies to apply to the order. | [optional] 

