# AmzSpApi::FulfillmentOutboundApiModel::FulfillmentOrder

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**seller_fulfillment_order_id** | **String** | The fulfillment order identifier submitted with the &#x60;createFulfillmentOrder&#x60; operation. | 
**marketplace_id** | **String** | The identifier for the marketplace the fulfillment order is placed against. | 
**displayable_order_id** | **String** | A fulfillment order identifier submitted with the &#x60;createFulfillmentOrder&#x60; operation. Displays as the order identifier in recipient-facing materials such as the packing slip. | 
**displayable_order_date** | [**Timestamp**](Timestamp.md) |  | 
**displayable_order_comment** | **String** | A text block submitted with the &#x60;createFulfillmentOrder&#x60; operation. Displays in recipient-facing materials such as the packing slip. | 
**shipping_speed_category** | [**ShippingSpeedCategory**](ShippingSpeedCategory.md) |  | 
**delivery_window** | [**DeliveryWindow**](DeliveryWindow.md) |  | [optional] 
**destination_address** | [**Address**](Address.md) |  | 
**fulfillment_action** | [**FulfillmentAction**](FulfillmentAction.md) |  | [optional] 
**fulfillment_policy** | [**FulfillmentPolicy**](FulfillmentPolicy.md) |  | [optional] 
**cod_settings** | [**CODSettings**](CODSettings.md) |  | [optional] 
**received_date** | [**Timestamp**](Timestamp.md) |  | 
**fulfillment_order_status** | [**FulfillmentOrderStatus**](FulfillmentOrderStatus.md) |  | 
**status_updated_date** | [**Timestamp**](Timestamp.md) |  | 
**notification_emails** | [**NotificationEmailList**](NotificationEmailList.md) |  | [optional] 
**feature_constraints** | [**Array&lt;FeatureSettings&gt;**](FeatureSettings.md) | A list of features and their fulfillment policies to apply to the order. | [optional] 

