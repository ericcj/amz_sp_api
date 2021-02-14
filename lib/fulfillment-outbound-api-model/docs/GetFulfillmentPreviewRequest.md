# AmzSpApi::FulfillmentOutboundApiModel::GetFulfillmentPreviewRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**marketplace_id** | **String** | The marketplace the fulfillment order is placed against. | [optional] 
**address** | [**Address**](Address.md) |  | 
**items** | [**GetFulfillmentPreviewItemList**](GetFulfillmentPreviewItemList.md) |  | 
**shipping_speed_categories** | [**ShippingSpeedCategoryList**](ShippingSpeedCategoryList.md) |  | [optional] 
**include_cod_fulfillment_preview** | **BOOLEAN** | Specifies whether to return fulfillment order previews that are for COD (Cash On Delivery).  Possible values:  * true - Returns all fulfillment order previews (both for COD and not for COD). * false - Returns only fulfillment order previews that are not for COD. | [optional] 
**include_delivery_windows** | **BOOLEAN** | Specifies whether to return the ScheduledDeliveryInfo response object, which contains the available delivery windows for a Scheduled Delivery. The ScheduledDeliveryInfo response object can only be returned for fulfillment order previews with ShippingSpeedCategories &#x3D; ScheduledDelivery. | [optional] 
**feature_constraints** | [**Array&lt;FeatureSettings&gt;**](FeatureSettings.md) | A list of features and their fulfillment policies to apply to the order. | [optional] 

