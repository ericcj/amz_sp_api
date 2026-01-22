# AmzSpApi::ApplicationIntegrationsApiModel::AppIntegrationsApi

All URIs are relative to *https://sellingpartnerapi-na.amazon.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_notification**](AppIntegrationsApi.md#create_notification) | **POST** /appIntegrations/2024-04-01/notifications | 
[**delete_notifications**](AppIntegrationsApi.md#delete_notifications) | **POST** /appIntegrations/2024-04-01/notifications/deletion | 
[**record_action_feedback**](AppIntegrationsApi.md#record_action_feedback) | **POST** /appIntegrations/2024-04-01/notifications/{notificationId}/feedback | 

# **create_notification**
> CreateNotificationResponse create_notification(body)



Create a notification for sellers in Seller Central.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 1 | 5 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The preceding table indicates the default rate and burst values for this operation. Sellers whose business demands require higher throughput may have higher rate and burst values than those shown here. For more information, refer to [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'application-integrations-api-model'

api_instance = AmzSpApi::ApplicationIntegrationsApiModel::AppIntegrationsApi.new
body = AmzSpApi::ApplicationIntegrationsApiModel::CreateNotificationRequest.new # CreateNotificationRequest | The request body for the `createNotification` operation.


begin
  result = api_instance.create_notification(body)
  p result
rescue AmzSpApi::ApplicationIntegrationsApiModel::ApiError => e
  puts "Exception when calling AppIntegrationsApi->create_notification: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateNotificationRequest**](CreateNotificationRequest.md)| The request body for the &#x60;createNotification&#x60; operation. | 

### Return type

[**CreateNotificationResponse**](CreateNotificationResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_notifications**
> delete_notifications(body)



Remove your application's notifications from the Appstore notifications dashboard.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 1 | 5 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The preceding table indicates the default rate and burst values for this operation. Sellers whose business demands require higher throughput may have higher rate and burst values than those shown here. For more information, refer to [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'application-integrations-api-model'

api_instance = AmzSpApi::ApplicationIntegrationsApiModel::AppIntegrationsApi.new
body = AmzSpApi::ApplicationIntegrationsApiModel::DeleteNotificationsRequest.new # DeleteNotificationsRequest | The request body for the `deleteNotifications` operation.


begin
  api_instance.delete_notifications(body)
rescue AmzSpApi::ApplicationIntegrationsApiModel::ApiError => e
  puts "Exception when calling AppIntegrationsApi->delete_notifications: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**DeleteNotificationsRequest**](DeleteNotificationsRequest.md)| The request body for the &#x60;deleteNotifications&#x60; operation. | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **record_action_feedback**
> record_action_feedback(bodynotification_id)



Records the seller's response to a notification.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 1 | 5 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The preceding table indicates the default rate and burst values for this operation. Sellers whose business demands require higher throughput may have higher rate and burst values than those shown here. For more information, refer to [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'application-integrations-api-model'

api_instance = AmzSpApi::ApplicationIntegrationsApiModel::AppIntegrationsApi.new
body = AmzSpApi::ApplicationIntegrationsApiModel::RecordActionFeedbackRequest.new # RecordActionFeedbackRequest | The request body for the `recordActionFeedback` operation.
notification_id = 'notification_id_example' # String | A `notificationId` uniquely identifies a notification.


begin
  api_instance.record_action_feedback(bodynotification_id)
rescue AmzSpApi::ApplicationIntegrationsApiModel::ApiError => e
  puts "Exception when calling AppIntegrationsApi->record_action_feedback: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**RecordActionFeedbackRequest**](RecordActionFeedbackRequest.md)| The request body for the &#x60;recordActionFeedback&#x60; operation. | 
 **notification_id** | **String**| A &#x60;notificationId&#x60; uniquely identifies a notification. | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



