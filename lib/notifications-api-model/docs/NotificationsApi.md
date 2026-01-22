# AmzSpApi::NotificationsApiModel::NotificationsApi

All URIs are relative to *https://sellingpartnerapi-na.amazon.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_destination**](NotificationsApi.md#create_destination) | **POST** /notifications/v1/destinations | 
[**create_subscription**](NotificationsApi.md#create_subscription) | **POST** /notifications/v1/subscriptions/{notificationType} | 
[**delete_destination**](NotificationsApi.md#delete_destination) | **DELETE** /notifications/v1/destinations/{destinationId} | 
[**delete_subscription_by_id**](NotificationsApi.md#delete_subscription_by_id) | **DELETE** /notifications/v1/subscriptions/{notificationType}/{subscriptionId} | 
[**get_destination**](NotificationsApi.md#get_destination) | **GET** /notifications/v1/destinations/{destinationId} | 
[**get_destinations**](NotificationsApi.md#get_destinations) | **GET** /notifications/v1/destinations | 
[**get_subscription**](NotificationsApi.md#get_subscription) | **GET** /notifications/v1/subscriptions/{notificationType} | 
[**get_subscription_by_id**](NotificationsApi.md#get_subscription_by_id) | **GET** /notifications/v1/subscriptions/{notificationType}/{subscriptionId} | 

# **create_destination**
> CreateDestinationResponse create_destination(body)



Creates a destination resource to receive notifications. The `createDestination` operation is grantless. For more information, refer to [Grantless operations](https://developer-docs.amazon.com/sp-api/docs/grantless-operations).  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 1 | 5 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may observe higher rate and burst values than those shown here. For more information, refer to [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'notifications-api-model'

api_instance = AmzSpApi::NotificationsApiModel::NotificationsApi.new
body = AmzSpApi::NotificationsApiModel::CreateDestinationRequest.new # CreateDestinationRequest | 


begin
  result = api_instance.create_destination(body)
  p result
rescue AmzSpApi::NotificationsApiModel::ApiError => e
  puts "Exception when calling NotificationsApi->create_destination: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateDestinationRequest**](CreateDestinationRequest.md)|  | 

### Return type

[**CreateDestinationResponse**](CreateDestinationResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, Successful Response



# **create_subscription**
> CreateSubscriptionResponse create_subscription(bodynotification_type)



Creates a subscription for the specified notification type to be delivered to the specified destination. Before you can subscribe, you must first create the destination by calling the `createDestination` operation. In cases where the specified notification type supports multiple payload versions, you can utilize this API to subscribe to a different payload version if you already have an existing subscription for a different payload version.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 1 | 5 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may observe higher rate and burst values than those shown here. For more information, refer to [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'notifications-api-model'

api_instance = AmzSpApi::NotificationsApiModel::NotificationsApi.new
body = AmzSpApi::NotificationsApiModel::CreateSubscriptionRequest.new # CreateSubscriptionRequest | 
notification_type = 'notification_type_example' # String | The type of notification.   For more information about notification types, refer to [Notification Type Values](https://developer-docs.amazon.com/sp-api/docs/notification-type-values).


begin
  result = api_instance.create_subscription(bodynotification_type)
  p result
rescue AmzSpApi::NotificationsApiModel::ApiError => e
  puts "Exception when calling NotificationsApi->create_subscription: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateSubscriptionRequest**](CreateSubscriptionRequest.md)|  | 
 **notification_type** | **String**| The type of notification.   For more information about notification types, refer to [Notification Type Values](https://developer-docs.amazon.com/sp-api/docs/notification-type-values). | 

### Return type

[**CreateSubscriptionResponse**](CreateSubscriptionResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, Successful Response



# **delete_destination**
> DeleteDestinationResponse delete_destination(destination_id)



Deletes the destination that you specify. The `deleteDestination` operation is grantless. For more information, refer to [Grantless operations](https://developer-docs.amazon.com/sp-api/docs/grantless-operations).  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 1 | 5 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may observe higher rate and burst values than those shown here. For more information, refer to [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'notifications-api-model'

api_instance = AmzSpApi::NotificationsApiModel::NotificationsApi.new
destination_id = 'destination_id_example' # String | The identifier for the destination that you want to delete.


begin
  result = api_instance.delete_destination(destination_id)
  p result
rescue AmzSpApi::NotificationsApiModel::ApiError => e
  puts "Exception when calling NotificationsApi->delete_destination: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **destination_id** | **String**| The identifier for the destination that you want to delete. | 

### Return type

[**DeleteDestinationResponse**](DeleteDestinationResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, Successful Response



# **delete_subscription_by_id**
> DeleteSubscriptionByIdResponse delete_subscription_by_id(subscription_id, notification_type)



Deletes the subscription indicated by the subscription identifier and notification type that you specify. The subscription identifier can be for any subscription associated with your application. After you successfully call this operation, notifications will stop being sent for the associated subscription. The `deleteSubscriptionById` operation is grantless. For more information, refer to [Grantless operations](https://developer-docs.amazon.com/sp-api/docs/grantless-operations).  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 1 | 5 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may observe higher rate and burst values than those shown here. For more information, refer to [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'notifications-api-model'

api_instance = AmzSpApi::NotificationsApiModel::NotificationsApi.new
subscription_id = 'subscription_id_example' # String | The identifier for the subscription that you want to delete.
notification_type = 'notification_type_example' # String | The type of notification.   For more information about notification types, refer to [Notification Type Values](https://developer-docs.amazon.com/sp-api/docs/notification-type-values).


begin
  result = api_instance.delete_subscription_by_id(subscription_id, notification_type)
  p result
rescue AmzSpApi::NotificationsApiModel::ApiError => e
  puts "Exception when calling NotificationsApi->delete_subscription_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subscription_id** | **String**| The identifier for the subscription that you want to delete. | 
 **notification_type** | **String**| The type of notification.   For more information about notification types, refer to [Notification Type Values](https://developer-docs.amazon.com/sp-api/docs/notification-type-values). | 

### Return type

[**DeleteSubscriptionByIdResponse**](DeleteSubscriptionByIdResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, Successful Operation Response



# **get_destination**
> GetDestinationResponse get_destination(destination_id)



Returns information about the destination that you specify. The `getDestination` operation is grantless. For more information, refer to [Grantless operations](https://developer-docs.amazon.com/sp-api/docs/grantless-operations).  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 1 | 5 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may observe higher rate and burst values than those shown here. For more information, refer to [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'notifications-api-model'

api_instance = AmzSpApi::NotificationsApiModel::NotificationsApi.new
destination_id = 'destination_id_example' # String | The identifier generated when you created the destination.


begin
  result = api_instance.get_destination(destination_id)
  p result
rescue AmzSpApi::NotificationsApiModel::ApiError => e
  puts "Exception when calling NotificationsApi->get_destination: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **destination_id** | **String**| The identifier generated when you created the destination. | 

### Return type

[**GetDestinationResponse**](GetDestinationResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, Successful Response



# **get_destinations**
> GetDestinationsResponse get_destinations



Returns information about all destinations. The `getDestinations` operation is grantless. For more information, refer to [Grantless operations](https://developer-docs.amazon.com/sp-api/docs/grantless-operations).  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 1 | 5 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may observe higher rate and burst values than those shown here. For more information, refer to [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'notifications-api-model'

api_instance = AmzSpApi::NotificationsApiModel::NotificationsApi.new

begin
  result = api_instance.get_destinations
  p result
rescue AmzSpApi::NotificationsApiModel::ApiError => e
  puts "Exception when calling NotificationsApi->get_destinations: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**GetDestinationsResponse**](GetDestinationsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, Successful Response



# **get_subscription**
> GetSubscriptionResponse get_subscription(notification_type, opts)



Returns information about subscription of the specified notification type and payload version. `payloadVersion` is an optional parameter. When `payloadVersion` is not provided, it will return latest payload version subscription's information. You can use this API to get subscription information when you do not have a subscription identifier.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 1 | 5 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may observe higher rate and burst values than those shown here. For more information, refer to [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'notifications-api-model'

api_instance = AmzSpApi::NotificationsApiModel::NotificationsApi.new
notification_type = 'notification_type_example' # String | The type of notification.   For more information about notification types, refer to [Notification Type Values](https://developer-docs.amazon.com/sp-api/docs/notification-type-values).
opts = { 
  payload_version: 'payload_version_example' # String | The version of the payload object to be used in the notification.
}

begin
  result = api_instance.get_subscription(notification_type, opts)
  p result
rescue AmzSpApi::NotificationsApiModel::ApiError => e
  puts "Exception when calling NotificationsApi->get_subscription: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **notification_type** | **String**| The type of notification.   For more information about notification types, refer to [Notification Type Values](https://developer-docs.amazon.com/sp-api/docs/notification-type-values). | 
 **payload_version** | **String**| The version of the payload object to be used in the notification. | [optional] 

### Return type

[**GetSubscriptionResponse**](GetSubscriptionResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, Successful Response



# **get_subscription_by_id**
> GetSubscriptionByIdResponse get_subscription_by_id(subscription_id, notification_type)



Returns information about a subscription for the specified notification type. The `getSubscriptionById` operation is grantless. For more information, refer to [Grantless operations](https://developer-docs.amazon.com/sp-api/docs/grantless-operations).  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 1 | 5 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may observe higher rate and burst values than those shown here. For more information, refer to [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'notifications-api-model'

api_instance = AmzSpApi::NotificationsApiModel::NotificationsApi.new
subscription_id = 'subscription_id_example' # String | The identifier for the subscription that you want to get.
notification_type = 'notification_type_example' # String | The type of notification.   For more information about notification types, refer to [Notification Type Values](https://developer-docs.amazon.com/sp-api/docs/notification-type-values).


begin
  result = api_instance.get_subscription_by_id(subscription_id, notification_type)
  p result
rescue AmzSpApi::NotificationsApiModel::ApiError => e
  puts "Exception when calling NotificationsApi->get_subscription_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subscription_id** | **String**| The identifier for the subscription that you want to get. | 
 **notification_type** | **String**| The type of notification.   For more information about notification types, refer to [Notification Type Values](https://developer-docs.amazon.com/sp-api/docs/notification-type-values). | 

### Return type

[**GetSubscriptionByIdResponse**](GetSubscriptionByIdResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, Successful Response



