# AmzSpApi::FulfillmentInboundApiModel::FbaInboundApi

All URIs are relative to *https://sellingpartnerapi-na.amazon.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cancel_inbound_plan**](FbaInboundApi.md#cancel_inbound_plan) | **PUT** /inbound/fba/2024-03-20/inboundPlans/{inboundPlanId}/cancellation | 
[**cancel_self_ship_appointment**](FbaInboundApi.md#cancel_self_ship_appointment) | **PUT** /inbound/fba/2024-03-20/inboundPlans/{inboundPlanId}/shipments/{shipmentId}/selfShipAppointmentCancellation | 
[**confirm_delivery_window_options**](FbaInboundApi.md#confirm_delivery_window_options) | **POST** /inbound/fba/2024-03-20/inboundPlans/{inboundPlanId}/shipments/{shipmentId}/deliveryWindowOptions/{deliveryWindowOptionId}/confirmation | 
[**confirm_packing_option**](FbaInboundApi.md#confirm_packing_option) | **POST** /inbound/fba/2024-03-20/inboundPlans/{inboundPlanId}/packingOptions/{packingOptionId}/confirmation | 
[**confirm_placement_option**](FbaInboundApi.md#confirm_placement_option) | **POST** /inbound/fba/2024-03-20/inboundPlans/{inboundPlanId}/placementOptions/{placementOptionId}/confirmation | 
[**confirm_shipment_content_update_preview**](FbaInboundApi.md#confirm_shipment_content_update_preview) | **POST** /inbound/fba/2024-03-20/inboundPlans/{inboundPlanId}/shipments/{shipmentId}/contentUpdatePreviews/{contentUpdatePreviewId}/confirmation | 
[**confirm_transportation_options**](FbaInboundApi.md#confirm_transportation_options) | **POST** /inbound/fba/2024-03-20/inboundPlans/{inboundPlanId}/transportationOptions/confirmation | 
[**create_inbound_plan**](FbaInboundApi.md#create_inbound_plan) | **POST** /inbound/fba/2024-03-20/inboundPlans | 
[**create_marketplace_item_labels**](FbaInboundApi.md#create_marketplace_item_labels) | **POST** /inbound/fba/2024-03-20/items/labels | 
[**generate_delivery_window_options**](FbaInboundApi.md#generate_delivery_window_options) | **POST** /inbound/fba/2024-03-20/inboundPlans/{inboundPlanId}/shipments/{shipmentId}/deliveryWindowOptions | 
[**generate_packing_options**](FbaInboundApi.md#generate_packing_options) | **POST** /inbound/fba/2024-03-20/inboundPlans/{inboundPlanId}/packingOptions | 
[**generate_placement_options**](FbaInboundApi.md#generate_placement_options) | **POST** /inbound/fba/2024-03-20/inboundPlans/{inboundPlanId}/placementOptions | 
[**generate_self_ship_appointment_slots**](FbaInboundApi.md#generate_self_ship_appointment_slots) | **POST** /inbound/fba/2024-03-20/inboundPlans/{inboundPlanId}/shipments/{shipmentId}/selfShipAppointmentSlots | 
[**generate_shipment_content_update_previews**](FbaInboundApi.md#generate_shipment_content_update_previews) | **POST** /inbound/fba/2024-03-20/inboundPlans/{inboundPlanId}/shipments/{shipmentId}/contentUpdatePreviews | 
[**generate_transportation_options**](FbaInboundApi.md#generate_transportation_options) | **POST** /inbound/fba/2024-03-20/inboundPlans/{inboundPlanId}/transportationOptions | 
[**get_delivery_challan_document**](FbaInboundApi.md#get_delivery_challan_document) | **GET** /inbound/fba/2024-03-20/inboundPlans/{inboundPlanId}/shipments/{shipmentId}/deliveryChallanDocument | 
[**get_inbound_operation_status**](FbaInboundApi.md#get_inbound_operation_status) | **GET** /inbound/fba/2024-03-20/operations/{operationId} | 
[**get_inbound_plan**](FbaInboundApi.md#get_inbound_plan) | **GET** /inbound/fba/2024-03-20/inboundPlans/{inboundPlanId} | 
[**get_self_ship_appointment_slots**](FbaInboundApi.md#get_self_ship_appointment_slots) | **GET** /inbound/fba/2024-03-20/inboundPlans/{inboundPlanId}/shipments/{shipmentId}/selfShipAppointmentSlots | 
[**get_shipment**](FbaInboundApi.md#get_shipment) | **GET** /inbound/fba/2024-03-20/inboundPlans/{inboundPlanId}/shipments/{shipmentId} | 
[**get_shipment_content_update_preview**](FbaInboundApi.md#get_shipment_content_update_preview) | **GET** /inbound/fba/2024-03-20/inboundPlans/{inboundPlanId}/shipments/{shipmentId}/contentUpdatePreviews/{contentUpdatePreviewId} | 
[**list_delivery_window_options**](FbaInboundApi.md#list_delivery_window_options) | **GET** /inbound/fba/2024-03-20/inboundPlans/{inboundPlanId}/shipments/{shipmentId}/deliveryWindowOptions | 
[**list_inbound_plan_boxes**](FbaInboundApi.md#list_inbound_plan_boxes) | **GET** /inbound/fba/2024-03-20/inboundPlans/{inboundPlanId}/boxes | 
[**list_inbound_plan_items**](FbaInboundApi.md#list_inbound_plan_items) | **GET** /inbound/fba/2024-03-20/inboundPlans/{inboundPlanId}/items | 
[**list_inbound_plan_pallets**](FbaInboundApi.md#list_inbound_plan_pallets) | **GET** /inbound/fba/2024-03-20/inboundPlans/{inboundPlanId}/pallets | 
[**list_inbound_plans**](FbaInboundApi.md#list_inbound_plans) | **GET** /inbound/fba/2024-03-20/inboundPlans | 
[**list_item_compliance_details**](FbaInboundApi.md#list_item_compliance_details) | **GET** /inbound/fba/2024-03-20/items/compliance | 
[**list_packing_group_boxes**](FbaInboundApi.md#list_packing_group_boxes) | **GET** /inbound/fba/2024-03-20/inboundPlans/{inboundPlanId}/packingGroups/{packingGroupId}/boxes | 
[**list_packing_group_items**](FbaInboundApi.md#list_packing_group_items) | **GET** /inbound/fba/2024-03-20/inboundPlans/{inboundPlanId}/packingGroups/{packingGroupId}/items | 
[**list_packing_options**](FbaInboundApi.md#list_packing_options) | **GET** /inbound/fba/2024-03-20/inboundPlans/{inboundPlanId}/packingOptions | 
[**list_placement_options**](FbaInboundApi.md#list_placement_options) | **GET** /inbound/fba/2024-03-20/inboundPlans/{inboundPlanId}/placementOptions | 
[**list_prep_details**](FbaInboundApi.md#list_prep_details) | **GET** /inbound/fba/2024-03-20/items/prepDetails | 
[**list_shipment_boxes**](FbaInboundApi.md#list_shipment_boxes) | **GET** /inbound/fba/2024-03-20/inboundPlans/{inboundPlanId}/shipments/{shipmentId}/boxes | 
[**list_shipment_content_update_previews**](FbaInboundApi.md#list_shipment_content_update_previews) | **GET** /inbound/fba/2024-03-20/inboundPlans/{inboundPlanId}/shipments/{shipmentId}/contentUpdatePreviews | 
[**list_shipment_items**](FbaInboundApi.md#list_shipment_items) | **GET** /inbound/fba/2024-03-20/inboundPlans/{inboundPlanId}/shipments/{shipmentId}/items | 
[**list_shipment_pallets**](FbaInboundApi.md#list_shipment_pallets) | **GET** /inbound/fba/2024-03-20/inboundPlans/{inboundPlanId}/shipments/{shipmentId}/pallets | 
[**list_transportation_options**](FbaInboundApi.md#list_transportation_options) | **GET** /inbound/fba/2024-03-20/inboundPlans/{inboundPlanId}/transportationOptions | 
[**schedule_self_ship_appointment**](FbaInboundApi.md#schedule_self_ship_appointment) | **POST** /inbound/fba/2024-03-20/inboundPlans/{inboundPlanId}/shipments/{shipmentId}/selfShipAppointmentSlots/{slotId}/schedule | 
[**set_packing_information**](FbaInboundApi.md#set_packing_information) | **POST** /inbound/fba/2024-03-20/inboundPlans/{inboundPlanId}/packingInformation | 
[**set_prep_details**](FbaInboundApi.md#set_prep_details) | **POST** /inbound/fba/2024-03-20/items/prepDetails | 
[**update_inbound_plan_name**](FbaInboundApi.md#update_inbound_plan_name) | **PUT** /inbound/fba/2024-03-20/inboundPlans/{inboundPlanId}/name | 
[**update_item_compliance_details**](FbaInboundApi.md#update_item_compliance_details) | **PUT** /inbound/fba/2024-03-20/items/compliance | 
[**update_shipment_name**](FbaInboundApi.md#update_shipment_name) | **PUT** /inbound/fba/2024-03-20/inboundPlans/{inboundPlanId}/shipments/{shipmentId}/name | 
[**update_shipment_source_address**](FbaInboundApi.md#update_shipment_source_address) | **PUT** /inbound/fba/2024-03-20/inboundPlans/{inboundPlanId}/shipments/{shipmentId}/sourceAddress | 
[**update_shipment_tracking_details**](FbaInboundApi.md#update_shipment_tracking_details) | **PUT** /inbound/fba/2024-03-20/inboundPlans/{inboundPlanId}/shipments/{shipmentId}/trackingDetails | 

# **cancel_inbound_plan**
> CancelInboundPlanResponse cancel_inbound_plan(inbound_plan_id)



Cancels an Inbound Plan. Charges may apply if the cancellation is performed outside of a void window. The window for Amazon Partnered Carriers is 24 hours for Small Parcel Delivery (SPD) and one hour for Less-Than-Truckload (LTL) carrier shipments.

### Example
```ruby
# load the gem
require 'fulfillment-inbound-api-model'

api_instance = AmzSpApi::FulfillmentInboundApiModel::FbaInboundApi.new
inbound_plan_id = 'inbound_plan_id_example' # String | Identifier of an inbound plan.


begin
  result = api_instance.cancel_inbound_plan(inbound_plan_id)
  p result
rescue AmzSpApi::FulfillmentInboundApiModel::ApiError => e
  puts "Exception when calling FbaInboundApi->cancel_inbound_plan: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbound_plan_id** | **String**| Identifier of an inbound plan. | 

### Return type

[**CancelInboundPlanResponse**](CancelInboundPlanResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **cancel_self_ship_appointment**
> CancelSelfShipAppointmentResponse cancel_self_ship_appointment(bodyinbound_plan_idshipment_id)



Cancels a self-ship appointment slot against a shipment. Only available in the following [marketplaces](https://developer-docs.amazon.com/sp-api/docs/marketplace-ids): MX, BR, EG, SA, AE, IN. 

### Example
```ruby
# load the gem
require 'fulfillment-inbound-api-model'

api_instance = AmzSpApi::FulfillmentInboundApiModel::FbaInboundApi.new
body = AmzSpApi::FulfillmentInboundApiModel::CancelSelfShipAppointmentRequest.new # CancelSelfShipAppointmentRequest | The body of the request to `cancelSelfShipAppointment`.
inbound_plan_id = 'inbound_plan_id_example' # String | Identifier of an inbound plan.
shipment_id = 'shipment_id_example' # String | Identifier of a shipment. A shipment contains the boxes and units being inbounded.


begin
  result = api_instance.cancel_self_ship_appointment(bodyinbound_plan_idshipment_id)
  p result
rescue AmzSpApi::FulfillmentInboundApiModel::ApiError => e
  puts "Exception when calling FbaInboundApi->cancel_self_ship_appointment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CancelSelfShipAppointmentRequest**](CancelSelfShipAppointmentRequest.md)| The body of the request to &#x60;cancelSelfShipAppointment&#x60;. | 
 **inbound_plan_id** | **String**| Identifier of an inbound plan. | 
 **shipment_id** | **String**| Identifier of a shipment. A shipment contains the boxes and units being inbounded. | 

### Return type

[**CancelSelfShipAppointmentResponse**](CancelSelfShipAppointmentResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **confirm_delivery_window_options**
> ConfirmDeliveryWindowOptionsResponse confirm_delivery_window_options(inbound_plan_id, shipment_id, delivery_window_option_id)



Confirms the delivery window option for chosen shipment within an inbound plan. A placement option must be confirmed prior to use of this API. Once confirmed, new delivery window options cannot be generated, but the chosen delivery window option can be updated before shipment closure. The window is used to provide the expected time when a shipment will arrive at the warehouse. All transportation options which have the program `CONFIRMED_DELIVERY_WINDOW` require a delivery window to be confirmed prior to transportation option confirmation.

### Example
```ruby
# load the gem
require 'fulfillment-inbound-api-model'

api_instance = AmzSpApi::FulfillmentInboundApiModel::FbaInboundApi.new
inbound_plan_id = 'inbound_plan_id_example' # String | Identifier of an inbound plan.
shipment_id = 'shipment_id_example' # String | The shipment to confirm the delivery window option for.
delivery_window_option_id = 'delivery_window_option_id_example' # String | The id of the delivery window option to be confirmed.


begin
  result = api_instance.confirm_delivery_window_options(inbound_plan_id, shipment_id, delivery_window_option_id)
  p result
rescue AmzSpApi::FulfillmentInboundApiModel::ApiError => e
  puts "Exception when calling FbaInboundApi->confirm_delivery_window_options: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbound_plan_id** | **String**| Identifier of an inbound plan. | 
 **shipment_id** | **String**| The shipment to confirm the delivery window option for. | 
 **delivery_window_option_id** | **String**| The id of the delivery window option to be confirmed. | 

### Return type

[**ConfirmDeliveryWindowOptionsResponse**](ConfirmDeliveryWindowOptionsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **confirm_packing_option**
> ConfirmPackingOptionResponse confirm_packing_option(inbound_plan_id, packing_option_id)



Confirms the packing option for an inbound plan.

### Example
```ruby
# load the gem
require 'fulfillment-inbound-api-model'

api_instance = AmzSpApi::FulfillmentInboundApiModel::FbaInboundApi.new
inbound_plan_id = 'inbound_plan_id_example' # String | Identifier of an inbound plan.
packing_option_id = 'packing_option_id_example' # String | Identifier of a packing option.


begin
  result = api_instance.confirm_packing_option(inbound_plan_id, packing_option_id)
  p result
rescue AmzSpApi::FulfillmentInboundApiModel::ApiError => e
  puts "Exception when calling FbaInboundApi->confirm_packing_option: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbound_plan_id** | **String**| Identifier of an inbound plan. | 
 **packing_option_id** | **String**| Identifier of a packing option. | 

### Return type

[**ConfirmPackingOptionResponse**](ConfirmPackingOptionResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **confirm_placement_option**
> ConfirmPlacementOptionResponse confirm_placement_option(inbound_plan_id, placement_option_id)



Confirms the placement option for an inbound plan. Once confirmed, it cannot be changed for the Inbound Plan.

### Example
```ruby
# load the gem
require 'fulfillment-inbound-api-model'

api_instance = AmzSpApi::FulfillmentInboundApiModel::FbaInboundApi.new
inbound_plan_id = 'inbound_plan_id_example' # String | Identifier of an inbound plan.
placement_option_id = 'placement_option_id_example' # String | The identifier of a placement option. A placement option represents the shipment splits and destinations of SKUs.


begin
  result = api_instance.confirm_placement_option(inbound_plan_id, placement_option_id)
  p result
rescue AmzSpApi::FulfillmentInboundApiModel::ApiError => e
  puts "Exception when calling FbaInboundApi->confirm_placement_option: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbound_plan_id** | **String**| Identifier of an inbound plan. | 
 **placement_option_id** | **String**| The identifier of a placement option. A placement option represents the shipment splits and destinations of SKUs. | 

### Return type

[**ConfirmPlacementOptionResponse**](ConfirmPlacementOptionResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **confirm_shipment_content_update_preview**
> ConfirmShipmentContentUpdatePreviewResponse confirm_shipment_content_update_preview(inbound_plan_id, shipment_id, content_update_preview_id)



Confirm a shipment content update preview and accept the changes in transportation cost.

### Example
```ruby
# load the gem
require 'fulfillment-inbound-api-model'

api_instance = AmzSpApi::FulfillmentInboundApiModel::FbaInboundApi.new
inbound_plan_id = 'inbound_plan_id_example' # String | Identifier of an inbound plan.
shipment_id = 'shipment_id_example' # String | Identifier of a shipment. A shipment contains the boxes and units being inbounded.
content_update_preview_id = 'content_update_preview_id_example' # String | Identifier of a content update preview.


begin
  result = api_instance.confirm_shipment_content_update_preview(inbound_plan_id, shipment_id, content_update_preview_id)
  p result
rescue AmzSpApi::FulfillmentInboundApiModel::ApiError => e
  puts "Exception when calling FbaInboundApi->confirm_shipment_content_update_preview: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbound_plan_id** | **String**| Identifier of an inbound plan. | 
 **shipment_id** | **String**| Identifier of a shipment. A shipment contains the boxes and units being inbounded. | 
 **content_update_preview_id** | **String**| Identifier of a content update preview. | 

### Return type

[**ConfirmShipmentContentUpdatePreviewResponse**](ConfirmShipmentContentUpdatePreviewResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **confirm_transportation_options**
> ConfirmTransportationOptionsResponse confirm_transportation_options(bodyinbound_plan_id)



Confirms all the transportation options for an inbound plan. A placement option must be confirmed prior to use of this API. Once confirmed, new transportation options can not be generated or confirmed for the Inbound Plan.

### Example
```ruby
# load the gem
require 'fulfillment-inbound-api-model'

api_instance = AmzSpApi::FulfillmentInboundApiModel::FbaInboundApi.new
body = AmzSpApi::FulfillmentInboundApiModel::ConfirmTransportationOptionsRequest.new # ConfirmTransportationOptionsRequest | The body of the request to `confirmTransportationOptions`.
inbound_plan_id = 'inbound_plan_id_example' # String | Identifier of an inbound plan.


begin
  result = api_instance.confirm_transportation_options(bodyinbound_plan_id)
  p result
rescue AmzSpApi::FulfillmentInboundApiModel::ApiError => e
  puts "Exception when calling FbaInboundApi->confirm_transportation_options: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**ConfirmTransportationOptionsRequest**](ConfirmTransportationOptionsRequest.md)| The body of the request to &#x60;confirmTransportationOptions&#x60;. | 
 **inbound_plan_id** | **String**| Identifier of an inbound plan. | 

### Return type

[**ConfirmTransportationOptionsResponse**](ConfirmTransportationOptionsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_inbound_plan**
> CreateInboundPlanResponse create_inbound_plan(body)



Creates an inbound plan. An inbound plan contains all the necessary information to send shipments into Amazon's fufillment network.

### Example
```ruby
# load the gem
require 'fulfillment-inbound-api-model'

api_instance = AmzSpApi::FulfillmentInboundApiModel::FbaInboundApi.new
body = AmzSpApi::FulfillmentInboundApiModel::CreateInboundPlanRequest.new # CreateInboundPlanRequest | The body of the request to `createInboundPlan`.


begin
  result = api_instance.create_inbound_plan(body)
  p result
rescue AmzSpApi::FulfillmentInboundApiModel::ApiError => e
  puts "Exception when calling FbaInboundApi->create_inbound_plan: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateInboundPlanRequest**](CreateInboundPlanRequest.md)| The body of the request to &#x60;createInboundPlan&#x60;. | 

### Return type

[**CreateInboundPlanResponse**](CreateInboundPlanResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_marketplace_item_labels**
> CreateMarketplaceItemLabelsResponse create_marketplace_item_labels(body)



For a given marketplace - creates labels for a list of MSKUs.

### Example
```ruby
# load the gem
require 'fulfillment-inbound-api-model'

api_instance = AmzSpApi::FulfillmentInboundApiModel::FbaInboundApi.new
body = AmzSpApi::FulfillmentInboundApiModel::CreateMarketplaceItemLabelsRequest.new # CreateMarketplaceItemLabelsRequest | The body of the request to `createMarketplaceItemLabels`.


begin
  result = api_instance.create_marketplace_item_labels(body)
  p result
rescue AmzSpApi::FulfillmentInboundApiModel::ApiError => e
  puts "Exception when calling FbaInboundApi->create_marketplace_item_labels: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateMarketplaceItemLabelsRequest**](CreateMarketplaceItemLabelsRequest.md)| The body of the request to &#x60;createMarketplaceItemLabels&#x60;. | 

### Return type

[**CreateMarketplaceItemLabelsResponse**](CreateMarketplaceItemLabelsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **generate_delivery_window_options**
> GenerateDeliveryWindowOptionsResponse generate_delivery_window_options(inbound_plan_id, shipment_id)



Generates available delivery window options for a given shipment.

### Example
```ruby
# load the gem
require 'fulfillment-inbound-api-model'

api_instance = AmzSpApi::FulfillmentInboundApiModel::FbaInboundApi.new
inbound_plan_id = 'inbound_plan_id_example' # String | Identifier of an inbound plan.
shipment_id = 'shipment_id_example' # String | The shipment to generate delivery window options for.


begin
  result = api_instance.generate_delivery_window_options(inbound_plan_id, shipment_id)
  p result
rescue AmzSpApi::FulfillmentInboundApiModel::ApiError => e
  puts "Exception when calling FbaInboundApi->generate_delivery_window_options: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbound_plan_id** | **String**| Identifier of an inbound plan. | 
 **shipment_id** | **String**| The shipment to generate delivery window options for. | 

### Return type

[**GenerateDeliveryWindowOptionsResponse**](GenerateDeliveryWindowOptionsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **generate_packing_options**
> GeneratePackingOptionsResponse generate_packing_options(inbound_plan_id)



Generates available packing options for the inbound plan.

### Example
```ruby
# load the gem
require 'fulfillment-inbound-api-model'

api_instance = AmzSpApi::FulfillmentInboundApiModel::FbaInboundApi.new
inbound_plan_id = 'inbound_plan_id_example' # String | Identifier of an inbound plan.


begin
  result = api_instance.generate_packing_options(inbound_plan_id)
  p result
rescue AmzSpApi::FulfillmentInboundApiModel::ApiError => e
  puts "Exception when calling FbaInboundApi->generate_packing_options: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbound_plan_id** | **String**| Identifier of an inbound plan. | 

### Return type

[**GeneratePackingOptionsResponse**](GeneratePackingOptionsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **generate_placement_options**
> GeneratePlacementOptionsResponse generate_placement_options(bodyinbound_plan_id)



Generates placement options for the inbound plan.

### Example
```ruby
# load the gem
require 'fulfillment-inbound-api-model'

api_instance = AmzSpApi::FulfillmentInboundApiModel::FbaInboundApi.new
body = AmzSpApi::FulfillmentInboundApiModel::GeneratePlacementOptionsRequest.new # GeneratePlacementOptionsRequest | The body of the request to `generatePlacementOptions`.
inbound_plan_id = 'inbound_plan_id_example' # String | Identifier of an inbound plan.


begin
  result = api_instance.generate_placement_options(bodyinbound_plan_id)
  p result
rescue AmzSpApi::FulfillmentInboundApiModel::ApiError => e
  puts "Exception when calling FbaInboundApi->generate_placement_options: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**GeneratePlacementOptionsRequest**](GeneratePlacementOptionsRequest.md)| The body of the request to &#x60;generatePlacementOptions&#x60;. | 
 **inbound_plan_id** | **String**| Identifier of an inbound plan. | 

### Return type

[**GeneratePlacementOptionsResponse**](GeneratePlacementOptionsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **generate_self_ship_appointment_slots**
> GenerateSelfShipAppointmentSlotsResponse generate_self_ship_appointment_slots(bodyinbound_plan_idshipment_id)



Initiates the process of generating the appointment slots list. Only available in the following [marketplaces](https://developer-docs.amazon.com/sp-api/docs/marketplace-ids): MX, BR, EG, SA, AE, IN. 

### Example
```ruby
# load the gem
require 'fulfillment-inbound-api-model'

api_instance = AmzSpApi::FulfillmentInboundApiModel::FbaInboundApi.new
body = AmzSpApi::FulfillmentInboundApiModel::GenerateSelfShipAppointmentSlotsRequest.new # GenerateSelfShipAppointmentSlotsRequest | The body of the request to `generateSelfShipAppointmentSlots`.
inbound_plan_id = 'inbound_plan_id_example' # String | Identifier of an inbound plan.
shipment_id = 'shipment_id_example' # String | Identifier of a shipment. A shipment contains the boxes and units being inbounded.


begin
  result = api_instance.generate_self_ship_appointment_slots(bodyinbound_plan_idshipment_id)
  p result
rescue AmzSpApi::FulfillmentInboundApiModel::ApiError => e
  puts "Exception when calling FbaInboundApi->generate_self_ship_appointment_slots: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**GenerateSelfShipAppointmentSlotsRequest**](GenerateSelfShipAppointmentSlotsRequest.md)| The body of the request to &#x60;generateSelfShipAppointmentSlots&#x60;. | 
 **inbound_plan_id** | **String**| Identifier of an inbound plan. | 
 **shipment_id** | **String**| Identifier of a shipment. A shipment contains the boxes and units being inbounded. | 

### Return type

[**GenerateSelfShipAppointmentSlotsResponse**](GenerateSelfShipAppointmentSlotsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **generate_shipment_content_update_previews**
> GenerateShipmentContentUpdatePreviewsResponse generate_shipment_content_update_previews(bodyinbound_plan_idshipment_id)



Generate a shipment content update preview given a set of intended boxes and/or items for a shipment with a confirmed carrier. The shipment content update preview will be viewable with the updated costs and contents prior to confirmation.

### Example
```ruby
# load the gem
require 'fulfillment-inbound-api-model'

api_instance = AmzSpApi::FulfillmentInboundApiModel::FbaInboundApi.new
body = AmzSpApi::FulfillmentInboundApiModel::GenerateShipmentContentUpdatePreviewsRequest.new # GenerateShipmentContentUpdatePreviewsRequest | The body of the request to `generateShipmentContentUpdatePreviews`.
inbound_plan_id = 'inbound_plan_id_example' # String | Identifier of an inbound plan.
shipment_id = 'shipment_id_example' # String | Identifier of a shipment. A shipment contains the boxes and units being inbounded.


begin
  result = api_instance.generate_shipment_content_update_previews(bodyinbound_plan_idshipment_id)
  p result
rescue AmzSpApi::FulfillmentInboundApiModel::ApiError => e
  puts "Exception when calling FbaInboundApi->generate_shipment_content_update_previews: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**GenerateShipmentContentUpdatePreviewsRequest**](GenerateShipmentContentUpdatePreviewsRequest.md)| The body of the request to &#x60;generateShipmentContentUpdatePreviews&#x60;. | 
 **inbound_plan_id** | **String**| Identifier of an inbound plan. | 
 **shipment_id** | **String**| Identifier of a shipment. A shipment contains the boxes and units being inbounded. | 

### Return type

[**GenerateShipmentContentUpdatePreviewsResponse**](GenerateShipmentContentUpdatePreviewsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **generate_transportation_options**
> GenerateTransportationOptionsResponse generate_transportation_options(bodyinbound_plan_id)



Generates available transportation options for a given placement option.

### Example
```ruby
# load the gem
require 'fulfillment-inbound-api-model'

api_instance = AmzSpApi::FulfillmentInboundApiModel::FbaInboundApi.new
body = AmzSpApi::FulfillmentInboundApiModel::GenerateTransportationOptionsRequest.new # GenerateTransportationOptionsRequest | The body of the request to `generateTransportationOptions`.
inbound_plan_id = 'inbound_plan_id_example' # String | Identifier of an inbound plan.


begin
  result = api_instance.generate_transportation_options(bodyinbound_plan_id)
  p result
rescue AmzSpApi::FulfillmentInboundApiModel::ApiError => e
  puts "Exception when calling FbaInboundApi->generate_transportation_options: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**GenerateTransportationOptionsRequest**](GenerateTransportationOptionsRequest.md)| The body of the request to &#x60;generateTransportationOptions&#x60;. | 
 **inbound_plan_id** | **String**| Identifier of an inbound plan. | 

### Return type

[**GenerateTransportationOptionsResponse**](GenerateTransportationOptionsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_delivery_challan_document**
> GetDeliveryChallanDocumentResponse get_delivery_challan_document(inbound_plan_id, shipment_id)



Provide delivery challan document for PCP transportation in IN marketplace.

### Example
```ruby
# load the gem
require 'fulfillment-inbound-api-model'

api_instance = AmzSpApi::FulfillmentInboundApiModel::FbaInboundApi.new
inbound_plan_id = 'inbound_plan_id_example' # String | Identifier of an inbound plan.
shipment_id = 'shipment_id_example' # String | Identifier of a shipment. A shipment contains the boxes and units being inbounded.


begin
  result = api_instance.get_delivery_challan_document(inbound_plan_id, shipment_id)
  p result
rescue AmzSpApi::FulfillmentInboundApiModel::ApiError => e
  puts "Exception when calling FbaInboundApi->get_delivery_challan_document: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbound_plan_id** | **String**| Identifier of an inbound plan. | 
 **shipment_id** | **String**| Identifier of a shipment. A shipment contains the boxes and units being inbounded. | 

### Return type

[**GetDeliveryChallanDocumentResponse**](GetDeliveryChallanDocumentResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_inbound_operation_status**
> InboundOperationStatus get_inbound_operation_status(operation_id)



Gets the status of the processing of an asynchronous API call.

### Example
```ruby
# load the gem
require 'fulfillment-inbound-api-model'

api_instance = AmzSpApi::FulfillmentInboundApiModel::FbaInboundApi.new
operation_id = 'operation_id_example' # String | Identifier of an asynchronous operation.


begin
  result = api_instance.get_inbound_operation_status(operation_id)
  p result
rescue AmzSpApi::FulfillmentInboundApiModel::ApiError => e
  puts "Exception when calling FbaInboundApi->get_inbound_operation_status: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **operation_id** | **String**| Identifier of an asynchronous operation. | 

### Return type

[**InboundOperationStatus**](InboundOperationStatus.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_inbound_plan**
> InboundPlan get_inbound_plan(inbound_plan_id)



Fetches the top level information about an inbound plan.

### Example
```ruby
# load the gem
require 'fulfillment-inbound-api-model'

api_instance = AmzSpApi::FulfillmentInboundApiModel::FbaInboundApi.new
inbound_plan_id = 'inbound_plan_id_example' # String | Identifier of an inbound plan.


begin
  result = api_instance.get_inbound_plan(inbound_plan_id)
  p result
rescue AmzSpApi::FulfillmentInboundApiModel::ApiError => e
  puts "Exception when calling FbaInboundApi->get_inbound_plan: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbound_plan_id** | **String**| Identifier of an inbound plan. | 

### Return type

[**InboundPlan**](InboundPlan.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_self_ship_appointment_slots**
> GetSelfShipAppointmentSlotsResponse get_self_ship_appointment_slots(inbound_plan_id, shipment_id, opts)



Retrieves a list of available self-ship appointment slots used to drop off a shipment at a warehouse. Only available in the following [marketplaces](https://developer-docs.amazon.com/sp-api/docs/marketplace-ids): MX, BR, EG, SA, AE, IN. 

### Example
```ruby
# load the gem
require 'fulfillment-inbound-api-model'

api_instance = AmzSpApi::FulfillmentInboundApiModel::FbaInboundApi.new
inbound_plan_id = 'inbound_plan_id_example' # String | Identifier of an inbound plan.
shipment_id = 'shipment_id_example' # String | Identifier of a shipment. A shipment contains the boxes and units being inbounded.
opts = { 
  page_size: 10, # Integer | The number of self ship appointment slots to return in the response matching the given query.
  pagination_token: 'pagination_token_example' # String | A token to fetch a certain page when there are multiple pages worth of results. The value of this token is fetched from the `pagination` returned in the API response. In the absence of the token value from the query parameter the API returns the first page of the result.
}

begin
  result = api_instance.get_self_ship_appointment_slots(inbound_plan_id, shipment_id, opts)
  p result
rescue AmzSpApi::FulfillmentInboundApiModel::ApiError => e
  puts "Exception when calling FbaInboundApi->get_self_ship_appointment_slots: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbound_plan_id** | **String**| Identifier of an inbound plan. | 
 **shipment_id** | **String**| Identifier of a shipment. A shipment contains the boxes and units being inbounded. | 
 **page_size** | **Integer**| The number of self ship appointment slots to return in the response matching the given query. | [optional] [default to 10]
 **pagination_token** | **String**| A token to fetch a certain page when there are multiple pages worth of results. The value of this token is fetched from the &#x60;pagination&#x60; returned in the API response. In the absence of the token value from the query parameter the API returns the first page of the result. | [optional] 

### Return type

[**GetSelfShipAppointmentSlotsResponse**](GetSelfShipAppointmentSlotsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_shipment**
> Shipment get_shipment(inbound_plan_id, shipment_id)



Provides the full details for a specific shipment within an inbound plan. The `transportationOptionId` inside `acceptedTransportationSelection` can be used to retrieve the transportation details for the shipment.

### Example
```ruby
# load the gem
require 'fulfillment-inbound-api-model'

api_instance = AmzSpApi::FulfillmentInboundApiModel::FbaInboundApi.new
inbound_plan_id = 'inbound_plan_id_example' # String | Identifier of an inbound plan.
shipment_id = 'shipment_id_example' # String | Identifier of a shipment. A shipment contains the boxes and units being inbounded.


begin
  result = api_instance.get_shipment(inbound_plan_id, shipment_id)
  p result
rescue AmzSpApi::FulfillmentInboundApiModel::ApiError => e
  puts "Exception when calling FbaInboundApi->get_shipment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbound_plan_id** | **String**| Identifier of an inbound plan. | 
 **shipment_id** | **String**| Identifier of a shipment. A shipment contains the boxes and units being inbounded. | 

### Return type

[**Shipment**](Shipment.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_shipment_content_update_preview**
> ContentUpdatePreview get_shipment_content_update_preview(inbound_plan_id, shipment_id, content_update_preview_id)



Retrieve a shipment content update preview which provides a summary of the requested shipment content changes along with the transportation cost implications of the change that can only be confirmed prior to the expiry date specified.

### Example
```ruby
# load the gem
require 'fulfillment-inbound-api-model'

api_instance = AmzSpApi::FulfillmentInboundApiModel::FbaInboundApi.new
inbound_plan_id = 'inbound_plan_id_example' # String | Identifier of an inbound plan.
shipment_id = 'shipment_id_example' # String | Identifier of a shipment. A shipment contains the boxes and units being inbounded.
content_update_preview_id = 'content_update_preview_id_example' # String | Identifier of a content update preview.


begin
  result = api_instance.get_shipment_content_update_preview(inbound_plan_id, shipment_id, content_update_preview_id)
  p result
rescue AmzSpApi::FulfillmentInboundApiModel::ApiError => e
  puts "Exception when calling FbaInboundApi->get_shipment_content_update_preview: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbound_plan_id** | **String**| Identifier of an inbound plan. | 
 **shipment_id** | **String**| Identifier of a shipment. A shipment contains the boxes and units being inbounded. | 
 **content_update_preview_id** | **String**| Identifier of a content update preview. | 

### Return type

[**ContentUpdatePreview**](ContentUpdatePreview.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_delivery_window_options**
> ListDeliveryWindowOptionsResponse list_delivery_window_options(inbound_plan_id, shipment_id, opts)



Retrieves all delivery window options for a shipment. Delivery window options must first be generated by the `generateDeliveryWindowOptions` operation before becoming available.

### Example
```ruby
# load the gem
require 'fulfillment-inbound-api-model'

api_instance = AmzSpApi::FulfillmentInboundApiModel::FbaInboundApi.new
inbound_plan_id = 'inbound_plan_id_example' # String | Identifier of an inbound plan.
shipment_id = 'shipment_id_example' # String | The shipment to get delivery window options for.
opts = { 
  page_size: 10, # Integer | The number of delivery window options to return in the response matching the given query.
  pagination_token: 'pagination_token_example' # String | A token to fetch a certain page when there are multiple pages worth of results. The value of this token is fetched from the `pagination` returned in the API response. In the absence of the token value from the query parameter the API returns the first page of the result.
}

begin
  result = api_instance.list_delivery_window_options(inbound_plan_id, shipment_id, opts)
  p result
rescue AmzSpApi::FulfillmentInboundApiModel::ApiError => e
  puts "Exception when calling FbaInboundApi->list_delivery_window_options: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbound_plan_id** | **String**| Identifier of an inbound plan. | 
 **shipment_id** | **String**| The shipment to get delivery window options for. | 
 **page_size** | **Integer**| The number of delivery window options to return in the response matching the given query. | [optional] [default to 10]
 **pagination_token** | **String**| A token to fetch a certain page when there are multiple pages worth of results. The value of this token is fetched from the &#x60;pagination&#x60; returned in the API response. In the absence of the token value from the query parameter the API returns the first page of the result. | [optional] 

### Return type

[**ListDeliveryWindowOptionsResponse**](ListDeliveryWindowOptionsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_inbound_plan_boxes**
> ListInboundPlanBoxesResponse list_inbound_plan_boxes(inbound_plan_id, opts)



Provides a paginated list of box packages in an inbound plan.

### Example
```ruby
# load the gem
require 'fulfillment-inbound-api-model'

api_instance = AmzSpApi::FulfillmentInboundApiModel::FbaInboundApi.new
inbound_plan_id = 'inbound_plan_id_example' # String | Identifier of an inbound plan.
opts = { 
  page_size: 10, # Integer | The number of boxes to return in the response matching the given query.
  pagination_token: 'pagination_token_example' # String | A token to fetch a certain page when there are multiple pages worth of results. The value of this token is fetched from the `pagination` returned in the API response. In the absence of the token value from the query parameter the API returns the first page of the result.
}

begin
  result = api_instance.list_inbound_plan_boxes(inbound_plan_id, opts)
  p result
rescue AmzSpApi::FulfillmentInboundApiModel::ApiError => e
  puts "Exception when calling FbaInboundApi->list_inbound_plan_boxes: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbound_plan_id** | **String**| Identifier of an inbound plan. | 
 **page_size** | **Integer**| The number of boxes to return in the response matching the given query. | [optional] [default to 10]
 **pagination_token** | **String**| A token to fetch a certain page when there are multiple pages worth of results. The value of this token is fetched from the &#x60;pagination&#x60; returned in the API response. In the absence of the token value from the query parameter the API returns the first page of the result. | [optional] 

### Return type

[**ListInboundPlanBoxesResponse**](ListInboundPlanBoxesResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_inbound_plan_items**
> ListInboundPlanItemsResponse list_inbound_plan_items(inbound_plan_id, opts)



Provides a paginated list of item packages in an inbound plan.

### Example
```ruby
# load the gem
require 'fulfillment-inbound-api-model'

api_instance = AmzSpApi::FulfillmentInboundApiModel::FbaInboundApi.new
inbound_plan_id = 'inbound_plan_id_example' # String | Identifier of an inbound plan.
opts = { 
  page_size: 10, # Integer | The number of items to return in the response matching the given query.
  pagination_token: 'pagination_token_example' # String | A token to fetch a certain page when there are multiple pages worth of results. The value of this token is fetched from the `pagination` returned in the API response. In the absence of the token value from the query parameter the API returns the first page of the result.
}

begin
  result = api_instance.list_inbound_plan_items(inbound_plan_id, opts)
  p result
rescue AmzSpApi::FulfillmentInboundApiModel::ApiError => e
  puts "Exception when calling FbaInboundApi->list_inbound_plan_items: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbound_plan_id** | **String**| Identifier of an inbound plan. | 
 **page_size** | **Integer**| The number of items to return in the response matching the given query. | [optional] [default to 10]
 **pagination_token** | **String**| A token to fetch a certain page when there are multiple pages worth of results. The value of this token is fetched from the &#x60;pagination&#x60; returned in the API response. In the absence of the token value from the query parameter the API returns the first page of the result. | [optional] 

### Return type

[**ListInboundPlanItemsResponse**](ListInboundPlanItemsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_inbound_plan_pallets**
> ListInboundPlanPalletsResponse list_inbound_plan_pallets(inbound_plan_id, opts)



Provides a paginated list of pallet packages in an inbound plan. An inbound plan will have pallets when the related details are provided after generating Less-Than-Truckload (LTL) carrier shipments.

### Example
```ruby
# load the gem
require 'fulfillment-inbound-api-model'

api_instance = AmzSpApi::FulfillmentInboundApiModel::FbaInboundApi.new
inbound_plan_id = 'inbound_plan_id_example' # String | Identifier of an inbound plan.
opts = { 
  page_size: 10, # Integer | The number of pallets to return in the response matching the given query.
  pagination_token: 'pagination_token_example' # String | A token to fetch a certain page when there are multiple pages worth of results. The value of this token is fetched from the `pagination` returned in the API response. In the absence of the token value from the query parameter the API returns the first page of the result.
}

begin
  result = api_instance.list_inbound_plan_pallets(inbound_plan_id, opts)
  p result
rescue AmzSpApi::FulfillmentInboundApiModel::ApiError => e
  puts "Exception when calling FbaInboundApi->list_inbound_plan_pallets: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbound_plan_id** | **String**| Identifier of an inbound plan. | 
 **page_size** | **Integer**| The number of pallets to return in the response matching the given query. | [optional] [default to 10]
 **pagination_token** | **String**| A token to fetch a certain page when there are multiple pages worth of results. The value of this token is fetched from the &#x60;pagination&#x60; returned in the API response. In the absence of the token value from the query parameter the API returns the first page of the result. | [optional] 

### Return type

[**ListInboundPlanPalletsResponse**](ListInboundPlanPalletsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_inbound_plans**
> ListInboundPlansResponse list_inbound_plans(opts)



Provides a list of inbound plans with minimal information.

### Example
```ruby
# load the gem
require 'fulfillment-inbound-api-model'

api_instance = AmzSpApi::FulfillmentInboundApiModel::FbaInboundApi.new
opts = { 
  page_size: 10, # Integer | The number of inbound plans to return in the response matching the given query.
  pagination_token: 'pagination_token_example', # String | A token to fetch a certain page when there are multiple pages worth of results. The value of this token is fetched from the `pagination` returned in the API response. In the absence of the token value from the query parameter the API returns the first page of the result.
  status: 'status_example', # String | The status of an inbound plan.
  sort_by: 'sort_by_example', # String | Sort by field.
  sort_order: 'sort_order_example' # String | The sort order.
}

begin
  result = api_instance.list_inbound_plans(opts)
  p result
rescue AmzSpApi::FulfillmentInboundApiModel::ApiError => e
  puts "Exception when calling FbaInboundApi->list_inbound_plans: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page_size** | **Integer**| The number of inbound plans to return in the response matching the given query. | [optional] [default to 10]
 **pagination_token** | **String**| A token to fetch a certain page when there are multiple pages worth of results. The value of this token is fetched from the &#x60;pagination&#x60; returned in the API response. In the absence of the token value from the query parameter the API returns the first page of the result. | [optional] 
 **status** | **String**| The status of an inbound plan. | [optional] 
 **sort_by** | **String**| Sort by field. | [optional] 
 **sort_order** | **String**| The sort order. | [optional] 

### Return type

[**ListInboundPlansResponse**](ListInboundPlansResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_item_compliance_details**
> ListItemComplianceDetailsResponse list_item_compliance_details(mskus, marketplace_id)



List the inbound compliance details for MSKUs in a given marketplace.  **Note:** MSKUs that contain certain characters must be encoded. For more information, refer to [URL Encoding](https://developer-docs.amazon.com/sp-api/docs/url-encoding).  The following characters must be double percent encoded:  - `%` - `+` - `,`  **Examples:** An MSKU value of `test%msku` is encoded as `test%2525msku`. An MSKU value of `test,msku` is encoded as `test%252Cmsku`.

### Example
```ruby
# load the gem
require 'fulfillment-inbound-api-model'

api_instance = AmzSpApi::FulfillmentInboundApiModel::FbaInboundApi.new
mskus = ['mskus_example'] # Array<String> | A list of merchant SKUs, a merchant-supplied identifier of a specific SKU.
marketplace_id = 'marketplace_id_example' # String | The Marketplace ID. For a list of possible values, refer to [Marketplace IDs](https://developer-docs.amazon.com/sp-api/docs/marketplace-ids).


begin
  result = api_instance.list_item_compliance_details(mskus, marketplace_id)
  p result
rescue AmzSpApi::FulfillmentInboundApiModel::ApiError => e
  puts "Exception when calling FbaInboundApi->list_item_compliance_details: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mskus** | [**Array&lt;String&gt;**](String.md)| A list of merchant SKUs, a merchant-supplied identifier of a specific SKU. | 
 **marketplace_id** | **String**| The Marketplace ID. For a list of possible values, refer to [Marketplace IDs](https://developer-docs.amazon.com/sp-api/docs/marketplace-ids). | 

### Return type

[**ListItemComplianceDetailsResponse**](ListItemComplianceDetailsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_packing_group_boxes**
> ListPackingGroupBoxesResponse list_packing_group_boxes(inbound_plan_id, packing_group_id, opts)



Retrieves a page of boxes from a given packing group. These boxes were previously provided through the `setPackingInformation` operation. This API is used for workflows where boxes are packed before Amazon determines shipment splits.

### Example
```ruby
# load the gem
require 'fulfillment-inbound-api-model'

api_instance = AmzSpApi::FulfillmentInboundApiModel::FbaInboundApi.new
inbound_plan_id = 'inbound_plan_id_example' # String | Identifier of an inbound plan.
packing_group_id = 'packing_group_id_example' # String | Identifier of a packing group.
opts = { 
  page_size: 10, # Integer | The number of packing group boxes to return in the response matching the given query.
  pagination_token: 'pagination_token_example' # String | A token to fetch a certain page when there are multiple pages worth of results. The value of this token is fetched from the `pagination` returned in the API response. In the absence of the token value from the query parameter the API returns the first page of the result.
}

begin
  result = api_instance.list_packing_group_boxes(inbound_plan_id, packing_group_id, opts)
  p result
rescue AmzSpApi::FulfillmentInboundApiModel::ApiError => e
  puts "Exception when calling FbaInboundApi->list_packing_group_boxes: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbound_plan_id** | **String**| Identifier of an inbound plan. | 
 **packing_group_id** | **String**| Identifier of a packing group. | 
 **page_size** | **Integer**| The number of packing group boxes to return in the response matching the given query. | [optional] [default to 10]
 **pagination_token** | **String**| A token to fetch a certain page when there are multiple pages worth of results. The value of this token is fetched from the &#x60;pagination&#x60; returned in the API response. In the absence of the token value from the query parameter the API returns the first page of the result. | [optional] 

### Return type

[**ListPackingGroupBoxesResponse**](ListPackingGroupBoxesResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_packing_group_items**
> ListPackingGroupItemsResponse list_packing_group_items(inbound_plan_id, packing_group_id, opts)



Retrieves a page of items in a given packing group. Packing options must first be generated by the corresponding operation before packing group items can be listed.

### Example
```ruby
# load the gem
require 'fulfillment-inbound-api-model'

api_instance = AmzSpApi::FulfillmentInboundApiModel::FbaInboundApi.new
inbound_plan_id = 'inbound_plan_id_example' # String | Identifier of an inbound plan.
packing_group_id = 'packing_group_id_example' # String | Identifier of a packing group.
opts = { 
  page_size: 10, # Integer | The number of packing group items to return in the response matching the given query.
  pagination_token: 'pagination_token_example' # String | A token to fetch a certain page when there are multiple pages worth of results. The value of this token is fetched from the `pagination` returned in the API response. In the absence of the token value from the query parameter the API returns the first page of the result.
}

begin
  result = api_instance.list_packing_group_items(inbound_plan_id, packing_group_id, opts)
  p result
rescue AmzSpApi::FulfillmentInboundApiModel::ApiError => e
  puts "Exception when calling FbaInboundApi->list_packing_group_items: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbound_plan_id** | **String**| Identifier of an inbound plan. | 
 **packing_group_id** | **String**| Identifier of a packing group. | 
 **page_size** | **Integer**| The number of packing group items to return in the response matching the given query. | [optional] [default to 10]
 **pagination_token** | **String**| A token to fetch a certain page when there are multiple pages worth of results. The value of this token is fetched from the &#x60;pagination&#x60; returned in the API response. In the absence of the token value from the query parameter the API returns the first page of the result. | [optional] 

### Return type

[**ListPackingGroupItemsResponse**](ListPackingGroupItemsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_packing_options**
> ListPackingOptionsResponse list_packing_options(inbound_plan_id, opts)



Retrieves a list of all packing options for an inbound plan. Packing options must first be generated by the corresponding operation before becoming available.

### Example
```ruby
# load the gem
require 'fulfillment-inbound-api-model'

api_instance = AmzSpApi::FulfillmentInboundApiModel::FbaInboundApi.new
inbound_plan_id = 'inbound_plan_id_example' # String | Identifier of an inbound plan.
opts = { 
  page_size: 10, # Integer | The number of packing options to return in the response matching the given query.
  pagination_token: 'pagination_token_example' # String | A token to fetch a certain page when there are multiple pages worth of results. The value of this token is fetched from the `pagination` returned in the API response. In the absence of the token value from the query parameter the API returns the first page of the result.
}

begin
  result = api_instance.list_packing_options(inbound_plan_id, opts)
  p result
rescue AmzSpApi::FulfillmentInboundApiModel::ApiError => e
  puts "Exception when calling FbaInboundApi->list_packing_options: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbound_plan_id** | **String**| Identifier of an inbound plan. | 
 **page_size** | **Integer**| The number of packing options to return in the response matching the given query. | [optional] [default to 10]
 **pagination_token** | **String**| A token to fetch a certain page when there are multiple pages worth of results. The value of this token is fetched from the &#x60;pagination&#x60; returned in the API response. In the absence of the token value from the query parameter the API returns the first page of the result. | [optional] 

### Return type

[**ListPackingOptionsResponse**](ListPackingOptionsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_placement_options**
> ListPlacementOptionsResponse list_placement_options(inbound_plan_id, opts)



Provides a list of all placement options for an inbound plan. Placement options must first be generated by the corresponding operation before becoming available.

### Example
```ruby
# load the gem
require 'fulfillment-inbound-api-model'

api_instance = AmzSpApi::FulfillmentInboundApiModel::FbaInboundApi.new
inbound_plan_id = 'inbound_plan_id_example' # String | Identifier of an inbound plan.
opts = { 
  page_size: 10, # Integer | The number of placement options to return in the response matching the given query.
  pagination_token: 'pagination_token_example' # String | A token to fetch a certain page when there are multiple pages worth of results. The value of this token is fetched from the `pagination` returned in the API response. In the absence of the token value from the query parameter the API returns the first page of the result.
}

begin
  result = api_instance.list_placement_options(inbound_plan_id, opts)
  p result
rescue AmzSpApi::FulfillmentInboundApiModel::ApiError => e
  puts "Exception when calling FbaInboundApi->list_placement_options: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbound_plan_id** | **String**| Identifier of an inbound plan. | 
 **page_size** | **Integer**| The number of placement options to return in the response matching the given query. | [optional] [default to 10]
 **pagination_token** | **String**| A token to fetch a certain page when there are multiple pages worth of results. The value of this token is fetched from the &#x60;pagination&#x60; returned in the API response. In the absence of the token value from the query parameter the API returns the first page of the result. | [optional] 

### Return type

[**ListPlacementOptionsResponse**](ListPlacementOptionsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_prep_details**
> ListPrepDetailsResponse list_prep_details(marketplace_id, mskus)



Get preparation details for a list of MSKUs in a specified marketplace.\\n\\n**Note:** MSKUs that contain certain characters must be encoded. For more information, refer to [URL Encoding](https://developer-docs.amazon.com/sp-api/docs/url-encoding).\\n\\nThe following characters must be double percent encoded:\\n\\n- `%`\\n- `+`\\n- `,`\\n\\n**Examples:** An MSKU value of `test%msku` is encoded as `test%2525msku`. An MSKU value of `test,msku` is encoded as `test%252Cmsku`. 

### Example
```ruby
# load the gem
require 'fulfillment-inbound-api-model'

api_instance = AmzSpApi::FulfillmentInboundApiModel::FbaInboundApi.new
marketplace_id = 'marketplace_id_example' # String | The marketplace ID. For a list of possible values, refer to [Marketplace IDs](https://developer-docs.amazon.com/sp-api/docs/marketplace-ids).
mskus = ['mskus_example'] # Array<String> | A list of merchant SKUs, a merchant-supplied identifier of a specific SKU.


begin
  result = api_instance.list_prep_details(marketplace_id, mskus)
  p result
rescue AmzSpApi::FulfillmentInboundApiModel::ApiError => e
  puts "Exception when calling FbaInboundApi->list_prep_details: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **marketplace_id** | **String**| The marketplace ID. For a list of possible values, refer to [Marketplace IDs](https://developer-docs.amazon.com/sp-api/docs/marketplace-ids). | 
 **mskus** | [**Array&lt;String&gt;**](String.md)| A list of merchant SKUs, a merchant-supplied identifier of a specific SKU. | 

### Return type

[**ListPrepDetailsResponse**](ListPrepDetailsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_shipment_boxes**
> ListShipmentBoxesResponse list_shipment_boxes(inbound_plan_id, shipment_id, opts)



Provides a paginated list of box packages in a shipment.

### Example
```ruby
# load the gem
require 'fulfillment-inbound-api-model'

api_instance = AmzSpApi::FulfillmentInboundApiModel::FbaInboundApi.new
inbound_plan_id = 'inbound_plan_id_example' # String | Identifier of an inbound plan.
shipment_id = 'shipment_id_example' # String | Identifier of a shipment. A shipment contains the boxes and units being inbounded.
opts = { 
  page_size: 10, # Integer | The number of boxes to return in the response matching the given query.
  pagination_token: 'pagination_token_example' # String | A token to fetch a certain page when there are multiple pages worth of results. The value of this token is fetched from the `pagination` returned in the API response. In the absence of the token value from the query parameter the API returns the first page of the result.
}

begin
  result = api_instance.list_shipment_boxes(inbound_plan_id, shipment_id, opts)
  p result
rescue AmzSpApi::FulfillmentInboundApiModel::ApiError => e
  puts "Exception when calling FbaInboundApi->list_shipment_boxes: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbound_plan_id** | **String**| Identifier of an inbound plan. | 
 **shipment_id** | **String**| Identifier of a shipment. A shipment contains the boxes and units being inbounded. | 
 **page_size** | **Integer**| The number of boxes to return in the response matching the given query. | [optional] [default to 10]
 **pagination_token** | **String**| A token to fetch a certain page when there are multiple pages worth of results. The value of this token is fetched from the &#x60;pagination&#x60; returned in the API response. In the absence of the token value from the query parameter the API returns the first page of the result. | [optional] 

### Return type

[**ListShipmentBoxesResponse**](ListShipmentBoxesResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_shipment_content_update_previews**
> ListShipmentContentUpdatePreviewsResponse list_shipment_content_update_previews(inbound_plan_id, shipment_id, opts)



Retrieve a paginated list of shipment content update previews for a given shipment. The shipment content update preview is a summary of the requested shipment content changes along with the transportation cost implications of the change that can only be confirmed prior to the expiry date specified.

### Example
```ruby
# load the gem
require 'fulfillment-inbound-api-model'

api_instance = AmzSpApi::FulfillmentInboundApiModel::FbaInboundApi.new
inbound_plan_id = 'inbound_plan_id_example' # String | Identifier of an inbound plan.
shipment_id = 'shipment_id_example' # String | Identifier of a shipment. A shipment contains the boxes and units being inbounded.
opts = { 
  page_size: 10, # Integer | The number of content update previews to return.
  pagination_token: 'pagination_token_example' # String | A token to fetch a certain page when there are multiple pages worth of results. The value of this token is fetched from the `pagination` returned in the API response. In the absence of the token value from the query parameter the API returns the first page of the result.
}

begin
  result = api_instance.list_shipment_content_update_previews(inbound_plan_id, shipment_id, opts)
  p result
rescue AmzSpApi::FulfillmentInboundApiModel::ApiError => e
  puts "Exception when calling FbaInboundApi->list_shipment_content_update_previews: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbound_plan_id** | **String**| Identifier of an inbound plan. | 
 **shipment_id** | **String**| Identifier of a shipment. A shipment contains the boxes and units being inbounded. | 
 **page_size** | **Integer**| The number of content update previews to return. | [optional] [default to 10]
 **pagination_token** | **String**| A token to fetch a certain page when there are multiple pages worth of results. The value of this token is fetched from the &#x60;pagination&#x60; returned in the API response. In the absence of the token value from the query parameter the API returns the first page of the result. | [optional] 

### Return type

[**ListShipmentContentUpdatePreviewsResponse**](ListShipmentContentUpdatePreviewsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_shipment_items**
> ListShipmentItemsResponse list_shipment_items(inbound_plan_id, shipment_id, opts)



Provides a paginated list of item packages in a shipment.

### Example
```ruby
# load the gem
require 'fulfillment-inbound-api-model'

api_instance = AmzSpApi::FulfillmentInboundApiModel::FbaInboundApi.new
inbound_plan_id = 'inbound_plan_id_example' # String | Identifier of an inbound plan.
shipment_id = 'shipment_id_example' # String | Identifier of a shipment. A shipment contains the boxes and units being inbounded.
opts = { 
  page_size: 10, # Integer | The number of items to return in the response matching the given query.
  pagination_token: 'pagination_token_example' # String | A token to fetch a certain page when there are multiple pages worth of results. The value of this token is fetched from the `pagination` returned in the API response. In the absence of the token value from the query parameter the API returns the first page of the result.
}

begin
  result = api_instance.list_shipment_items(inbound_plan_id, shipment_id, opts)
  p result
rescue AmzSpApi::FulfillmentInboundApiModel::ApiError => e
  puts "Exception when calling FbaInboundApi->list_shipment_items: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbound_plan_id** | **String**| Identifier of an inbound plan. | 
 **shipment_id** | **String**| Identifier of a shipment. A shipment contains the boxes and units being inbounded. | 
 **page_size** | **Integer**| The number of items to return in the response matching the given query. | [optional] [default to 10]
 **pagination_token** | **String**| A token to fetch a certain page when there are multiple pages worth of results. The value of this token is fetched from the &#x60;pagination&#x60; returned in the API response. In the absence of the token value from the query parameter the API returns the first page of the result. | [optional] 

### Return type

[**ListShipmentItemsResponse**](ListShipmentItemsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_shipment_pallets**
> ListShipmentPalletsResponse list_shipment_pallets(inbound_plan_id, shipment_id, opts)



Provides a paginated list of pallet packages in a shipment. A palletized shipment will have pallets when the related details are provided after generating Less-Than-Truckload (LTL) carrier shipments.

### Example
```ruby
# load the gem
require 'fulfillment-inbound-api-model'

api_instance = AmzSpApi::FulfillmentInboundApiModel::FbaInboundApi.new
inbound_plan_id = 'inbound_plan_id_example' # String | Identifier of an inbound plan.
shipment_id = 'shipment_id_example' # String | Identifier of a shipment. A shipment contains the boxes and units being inbounded.
opts = { 
  page_size: 10, # Integer | The number of pallets to return in the response matching the given query.
  pagination_token: 'pagination_token_example' # String | A token to fetch a certain page when there are multiple pages worth of results. The value of this token is fetched from the `pagination` returned in the API response. In the absence of the token value from the query parameter the API returns the first page of the result.
}

begin
  result = api_instance.list_shipment_pallets(inbound_plan_id, shipment_id, opts)
  p result
rescue AmzSpApi::FulfillmentInboundApiModel::ApiError => e
  puts "Exception when calling FbaInboundApi->list_shipment_pallets: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbound_plan_id** | **String**| Identifier of an inbound plan. | 
 **shipment_id** | **String**| Identifier of a shipment. A shipment contains the boxes and units being inbounded. | 
 **page_size** | **Integer**| The number of pallets to return in the response matching the given query. | [optional] [default to 10]
 **pagination_token** | **String**| A token to fetch a certain page when there are multiple pages worth of results. The value of this token is fetched from the &#x60;pagination&#x60; returned in the API response. In the absence of the token value from the query parameter the API returns the first page of the result. | [optional] 

### Return type

[**ListShipmentPalletsResponse**](ListShipmentPalletsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_transportation_options**
> ListTransportationOptionsResponse list_transportation_options(inbound_plan_id, opts)



Retrieves all transportation options for a shipment. Transportation options must first be generated by the `generateTransportationOptions` operation before becoming available.

### Example
```ruby
# load the gem
require 'fulfillment-inbound-api-model'

api_instance = AmzSpApi::FulfillmentInboundApiModel::FbaInboundApi.new
inbound_plan_id = 'inbound_plan_id_example' # String | Identifier of an inbound plan.
opts = { 
  page_size: 10, # Integer | The number of transportation options to return in the response matching the given query.
  pagination_token: 'pagination_token_example', # String | A token to fetch a certain page when there are multiple pages worth of results. The value of this token is fetched from the `pagination` returned in the API response. In the absence of the token value from the query parameter the API returns the first page of the result.
  placement_option_id: 'placement_option_id_example', # String | The placement option to get transportation options for. Either `placementOptionId` or `shipmentId` must be specified.
  shipment_id: 'shipment_id_example' # String | The shipment to get transportation options for. Either `placementOptionId` or `shipmentId` must be specified.
}

begin
  result = api_instance.list_transportation_options(inbound_plan_id, opts)
  p result
rescue AmzSpApi::FulfillmentInboundApiModel::ApiError => e
  puts "Exception when calling FbaInboundApi->list_transportation_options: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbound_plan_id** | **String**| Identifier of an inbound plan. | 
 **page_size** | **Integer**| The number of transportation options to return in the response matching the given query. | [optional] [default to 10]
 **pagination_token** | **String**| A token to fetch a certain page when there are multiple pages worth of results. The value of this token is fetched from the &#x60;pagination&#x60; returned in the API response. In the absence of the token value from the query parameter the API returns the first page of the result. | [optional] 
 **placement_option_id** | **String**| The placement option to get transportation options for. Either &#x60;placementOptionId&#x60; or &#x60;shipmentId&#x60; must be specified. | [optional] 
 **shipment_id** | **String**| The shipment to get transportation options for. Either &#x60;placementOptionId&#x60; or &#x60;shipmentId&#x60; must be specified. | [optional] 

### Return type

[**ListTransportationOptionsResponse**](ListTransportationOptionsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **schedule_self_ship_appointment**
> ScheduleSelfShipAppointmentResponse schedule_self_ship_appointment(bodyinbound_plan_idshipment_idslot_id)



Confirms or reschedules a self-ship appointment slot against a shipment. Only available in the following [marketplaces](https://developer-docs.amazon.com/sp-api/docs/marketplace-ids): MX, BR, EG, SA, AE, IN. 

### Example
```ruby
# load the gem
require 'fulfillment-inbound-api-model'

api_instance = AmzSpApi::FulfillmentInboundApiModel::FbaInboundApi.new
body = AmzSpApi::FulfillmentInboundApiModel::ScheduleSelfShipAppointmentRequest.new # ScheduleSelfShipAppointmentRequest | The body of the request to `scheduleSelfShipAppointment`.
inbound_plan_id = 'inbound_plan_id_example' # String | Identifier of an inbound plan.
shipment_id = 'shipment_id_example' # String | Identifier of a shipment. A shipment contains the boxes and units being inbounded.
slot_id = 'slot_id_example' # String | An identifier to a self-ship appointment slot.


begin
  result = api_instance.schedule_self_ship_appointment(bodyinbound_plan_idshipment_idslot_id)
  p result
rescue AmzSpApi::FulfillmentInboundApiModel::ApiError => e
  puts "Exception when calling FbaInboundApi->schedule_self_ship_appointment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**ScheduleSelfShipAppointmentRequest**](ScheduleSelfShipAppointmentRequest.md)| The body of the request to &#x60;scheduleSelfShipAppointment&#x60;. | 
 **inbound_plan_id** | **String**| Identifier of an inbound plan. | 
 **shipment_id** | **String**| Identifier of a shipment. A shipment contains the boxes and units being inbounded. | 
 **slot_id** | **String**| An identifier to a self-ship appointment slot. | 

### Return type

[**ScheduleSelfShipAppointmentResponse**](ScheduleSelfShipAppointmentResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **set_packing_information**
> SetPackingInformationResponse set_packing_information(bodyinbound_plan_id)



Sets packing information for an inbound plan. This should be called after an inbound plan is created to populate the box level information required for planning and transportation estimates.

### Example
```ruby
# load the gem
require 'fulfillment-inbound-api-model'

api_instance = AmzSpApi::FulfillmentInboundApiModel::FbaInboundApi.new
body = AmzSpApi::FulfillmentInboundApiModel::SetPackingInformationRequest.new # SetPackingInformationRequest | The body of the request to `setPackingInformation`.
inbound_plan_id = 'inbound_plan_id_example' # String | Identifier of an inbound plan.


begin
  result = api_instance.set_packing_information(bodyinbound_plan_id)
  p result
rescue AmzSpApi::FulfillmentInboundApiModel::ApiError => e
  puts "Exception when calling FbaInboundApi->set_packing_information: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SetPackingInformationRequest**](SetPackingInformationRequest.md)| The body of the request to &#x60;setPackingInformation&#x60;. | 
 **inbound_plan_id** | **String**| Identifier of an inbound plan. | 

### Return type

[**SetPackingInformationResponse**](SetPackingInformationResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **set_prep_details**
> SetPrepDetailsResponse set_prep_details(body)



Set the preparation details for a list of MSKUs in a specified marketplace.

### Example
```ruby
# load the gem
require 'fulfillment-inbound-api-model'

api_instance = AmzSpApi::FulfillmentInboundApiModel::FbaInboundApi.new
body = AmzSpApi::FulfillmentInboundApiModel::SetPrepDetailsRequest.new # SetPrepDetailsRequest | The body of the request to `setPrepDetails`.


begin
  result = api_instance.set_prep_details(body)
  p result
rescue AmzSpApi::FulfillmentInboundApiModel::ApiError => e
  puts "Exception when calling FbaInboundApi->set_prep_details: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SetPrepDetailsRequest**](SetPrepDetailsRequest.md)| The body of the request to &#x60;setPrepDetails&#x60;. | 

### Return type

[**SetPrepDetailsResponse**](SetPrepDetailsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_inbound_plan_name**
> update_inbound_plan_name(bodyinbound_plan_id)



Updates the name of an existing inbound plan.

### Example
```ruby
# load the gem
require 'fulfillment-inbound-api-model'

api_instance = AmzSpApi::FulfillmentInboundApiModel::FbaInboundApi.new
body = AmzSpApi::FulfillmentInboundApiModel::UpdateInboundPlanNameRequest.new # UpdateInboundPlanNameRequest | The body of the request to `updateInboundPlanName`.
inbound_plan_id = 'inbound_plan_id_example' # String | Identifier of an inbound plan.


begin
  api_instance.update_inbound_plan_name(bodyinbound_plan_id)
rescue AmzSpApi::FulfillmentInboundApiModel::ApiError => e
  puts "Exception when calling FbaInboundApi->update_inbound_plan_name: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**UpdateInboundPlanNameRequest**](UpdateInboundPlanNameRequest.md)| The body of the request to &#x60;updateInboundPlanName&#x60;. | 
 **inbound_plan_id** | **String**| Identifier of an inbound plan. | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_item_compliance_details**
> UpdateItemComplianceDetailsResponse update_item_compliance_details(bodymarketplace_id)



Update compliance details for a list of MSKUs. The details provided here are only used for the India (IN - A21TJRUUN4KGV) marketplace compliance validation.

### Example
```ruby
# load the gem
require 'fulfillment-inbound-api-model'

api_instance = AmzSpApi::FulfillmentInboundApiModel::FbaInboundApi.new
body = AmzSpApi::FulfillmentInboundApiModel::UpdateItemComplianceDetailsRequest.new # UpdateItemComplianceDetailsRequest | The body of the request to `updateItemComplianceDetails`.
marketplace_id = 'marketplace_id_example' # String | The Marketplace ID. For a list of possible values, refer to [Marketplace IDs](https://developer-docs.amazon.com/sp-api/docs/marketplace-ids).


begin
  result = api_instance.update_item_compliance_details(bodymarketplace_id)
  p result
rescue AmzSpApi::FulfillmentInboundApiModel::ApiError => e
  puts "Exception when calling FbaInboundApi->update_item_compliance_details: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**UpdateItemComplianceDetailsRequest**](UpdateItemComplianceDetailsRequest.md)| The body of the request to &#x60;updateItemComplianceDetails&#x60;. | 
 **marketplace_id** | **String**| The Marketplace ID. For a list of possible values, refer to [Marketplace IDs](https://developer-docs.amazon.com/sp-api/docs/marketplace-ids). | 

### Return type

[**UpdateItemComplianceDetailsResponse**](UpdateItemComplianceDetailsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_shipment_name**
> update_shipment_name(bodyinbound_plan_idshipment_id)



Updates the name of an existing shipment.

### Example
```ruby
# load the gem
require 'fulfillment-inbound-api-model'

api_instance = AmzSpApi::FulfillmentInboundApiModel::FbaInboundApi.new
body = AmzSpApi::FulfillmentInboundApiModel::UpdateShipmentNameRequest.new # UpdateShipmentNameRequest | The body of the request to `updateShipmentName`.
inbound_plan_id = 'inbound_plan_id_example' # String | Identifier of an inbound plan.
shipment_id = 'shipment_id_example' # String | Identifier of a shipment. A shipment contains the boxes and units being inbounded.


begin
  api_instance.update_shipment_name(bodyinbound_plan_idshipment_id)
rescue AmzSpApi::FulfillmentInboundApiModel::ApiError => e
  puts "Exception when calling FbaInboundApi->update_shipment_name: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**UpdateShipmentNameRequest**](UpdateShipmentNameRequest.md)| The body of the request to &#x60;updateShipmentName&#x60;. | 
 **inbound_plan_id** | **String**| Identifier of an inbound plan. | 
 **shipment_id** | **String**| Identifier of a shipment. A shipment contains the boxes and units being inbounded. | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_shipment_source_address**
> UpdateShipmentSourceAddressResponse update_shipment_source_address(bodyinbound_plan_idshipment_id)



Updates the source address of an existing shipment. The shipment source address can only be updated prior to the confirmation of the shipment carriers. As a result of the updated source address, existing transportation options will be invalidated and will need to be regenerated to capture the potential difference in transportation options and quotes due to the new source address.

### Example
```ruby
# load the gem
require 'fulfillment-inbound-api-model'

api_instance = AmzSpApi::FulfillmentInboundApiModel::FbaInboundApi.new
body = AmzSpApi::FulfillmentInboundApiModel::UpdateShipmentSourceAddressRequest.new # UpdateShipmentSourceAddressRequest | The body of the request to `updateShipmentSourceAddress`.
inbound_plan_id = 'inbound_plan_id_example' # String | Identifier of an inbound plan.
shipment_id = 'shipment_id_example' # String | Identifier of a shipment. A shipment contains the boxes and units being inbounded.


begin
  result = api_instance.update_shipment_source_address(bodyinbound_plan_idshipment_id)
  p result
rescue AmzSpApi::FulfillmentInboundApiModel::ApiError => e
  puts "Exception when calling FbaInboundApi->update_shipment_source_address: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**UpdateShipmentSourceAddressRequest**](UpdateShipmentSourceAddressRequest.md)| The body of the request to &#x60;updateShipmentSourceAddress&#x60;. | 
 **inbound_plan_id** | **String**| Identifier of an inbound plan. | 
 **shipment_id** | **String**| Identifier of a shipment. A shipment contains the boxes and units being inbounded. | 

### Return type

[**UpdateShipmentSourceAddressResponse**](UpdateShipmentSourceAddressResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_shipment_tracking_details**
> UpdateShipmentTrackingDetailsResponse update_shipment_tracking_details(bodyinbound_plan_idshipment_id)



Updates a shipment's tracking details.

### Example
```ruby
# load the gem
require 'fulfillment-inbound-api-model'

api_instance = AmzSpApi::FulfillmentInboundApiModel::FbaInboundApi.new
body = AmzSpApi::FulfillmentInboundApiModel::UpdateShipmentTrackingDetailsRequest.new # UpdateShipmentTrackingDetailsRequest | The body of the request to `updateShipmentTrackingDetails`.
inbound_plan_id = 'inbound_plan_id_example' # String | Identifier of an inbound plan.
shipment_id = 'shipment_id_example' # String | Identifier of a shipment. A shipment contains the boxes and units being inbounded.


begin
  result = api_instance.update_shipment_tracking_details(bodyinbound_plan_idshipment_id)
  p result
rescue AmzSpApi::FulfillmentInboundApiModel::ApiError => e
  puts "Exception when calling FbaInboundApi->update_shipment_tracking_details: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**UpdateShipmentTrackingDetailsRequest**](UpdateShipmentTrackingDetailsRequest.md)| The body of the request to &#x60;updateShipmentTrackingDetails&#x60;. | 
 **inbound_plan_id** | **String**| Identifier of an inbound plan. | 
 **shipment_id** | **String**| Identifier of a shipment. A shipment contains the boxes and units being inbounded. | 

### Return type

[**UpdateShipmentTrackingDetailsResponse**](UpdateShipmentTrackingDetailsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



