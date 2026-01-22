# AmzSpApi::MessagingApiModel::MessagingApi

All URIs are relative to *https://sellingpartnerapi-na.amazon.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**confirm_customization_details**](MessagingApi.md#confirm_customization_details) | **POST** /messaging/v1/orders/{amazonOrderId}/messages/confirmCustomizationDetails | 
[**create_amazon_motors**](MessagingApi.md#create_amazon_motors) | **POST** /messaging/v1/orders/{amazonOrderId}/messages/amazonMotors | 
[**create_confirm_delivery_details**](MessagingApi.md#create_confirm_delivery_details) | **POST** /messaging/v1/orders/{amazonOrderId}/messages/confirmDeliveryDetails | 
[**create_confirm_order_details**](MessagingApi.md#create_confirm_order_details) | **POST** /messaging/v1/orders/{amazonOrderId}/messages/confirmOrderDetails | 
[**create_confirm_service_details**](MessagingApi.md#create_confirm_service_details) | **POST** /messaging/v1/orders/{amazonOrderId}/messages/confirmServiceDetails | 
[**create_digital_access_key**](MessagingApi.md#create_digital_access_key) | **POST** /messaging/v1/orders/{amazonOrderId}/messages/digitalAccessKey | 
[**create_legal_disclosure**](MessagingApi.md#create_legal_disclosure) | **POST** /messaging/v1/orders/{amazonOrderId}/messages/legalDisclosure | 
[**create_unexpected_problem**](MessagingApi.md#create_unexpected_problem) | **POST** /messaging/v1/orders/{amazonOrderId}/messages/unexpectedProblem | 
[**create_warranty**](MessagingApi.md#create_warranty) | **POST** /messaging/v1/orders/{amazonOrderId}/messages/warranty | 
[**get_attributes**](MessagingApi.md#get_attributes) | **GET** /messaging/v1/orders/{amazonOrderId}/attributes | 
[**get_messaging_actions_for_order**](MessagingApi.md#get_messaging_actions_for_order) | **GET** /messaging/v1/orders/{amazonOrderId} | 
[**send_invoice**](MessagingApi.md#send_invoice) | **POST** /messaging/v1/orders/{amazonOrderId}/messages/invoice | 

# **confirm_customization_details**
> CreateConfirmCustomizationDetailsResponse confirm_customization_details(bodymarketplace_idsamazon_order_id)



Sends a message asking a buyer to provide or verify customization details such as name spelling, images, initials, etc.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 1 | 5 |  The `x-amzn-RateLimit-Limit` response header contains the usage plan rate limits for the operation, when available. The preceding table contains the default rate and burst values for this operation. Selling partners whose business demands require higher throughput might have higher rate and burst values than those shown here. For more information, refer to [Usage Plans and Rate Limits](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'messaging-api-model'

api_instance = AmzSpApi::MessagingApiModel::MessagingApi.new
body = AmzSpApi::MessagingApiModel::CreateConfirmCustomizationDetailsRequest.new # CreateConfirmCustomizationDetailsRequest | This contains the message body for a message.
marketplace_ids = ['marketplace_ids_example'] # Array<String> | A marketplace identifier. This identifies the marketplace in which the order was placed. You can only specify one marketplace.
amazon_order_id = 'amazon_order_id_example' # String | An Amazon order identifier. This identifies the order for which a message is sent.


begin
  result = api_instance.confirm_customization_details(bodymarketplace_idsamazon_order_id)
  p result
rescue AmzSpApi::MessagingApiModel::ApiError => e
  puts "Exception when calling MessagingApi->confirm_customization_details: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateConfirmCustomizationDetailsRequest**](CreateConfirmCustomizationDetailsRequest.md)| This contains the message body for a message. | 
 **marketplace_ids** | [**Array&lt;String&gt;**](String.md)| A marketplace identifier. This identifies the marketplace in which the order was placed. You can only specify one marketplace. | 
 **amazon_order_id** | **String**| An Amazon order identifier. This identifies the order for which a message is sent. | 

### Return type

[**CreateConfirmCustomizationDetailsResponse**](CreateConfirmCustomizationDetailsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/hal+json



# **create_amazon_motors**
> CreateAmazonMotorsResponse create_amazon_motors(bodymarketplace_idsamazon_order_id)



Sends a message to a buyer to provide details about an Amazon Motors order. This message can only be sent by Amazon Motors sellers.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 1 | 5 |  The `x-amzn-RateLimit-Limit` response header contains the usage plan rate limits for the operation, when available. The preceding table contains the default rate and burst values for this operation. Selling partners whose business demands require higher throughput might have higher rate and burst values than those shown here. For more information, refer to [Usage Plans and Rate Limits](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'messaging-api-model'

api_instance = AmzSpApi::MessagingApiModel::MessagingApi.new
body = AmzSpApi::MessagingApiModel::CreateAmazonMotorsRequest.new # CreateAmazonMotorsRequest | This contains the message body for a message.
marketplace_ids = ['marketplace_ids_example'] # Array<String> | A marketplace identifier. This identifies the marketplace in which the order was placed. You can only specify one marketplace.
amazon_order_id = 'amazon_order_id_example' # String | An Amazon order identifier. This identifies the order for which a message is sent.


begin
  result = api_instance.create_amazon_motors(bodymarketplace_idsamazon_order_id)
  p result
rescue AmzSpApi::MessagingApiModel::ApiError => e
  puts "Exception when calling MessagingApi->create_amazon_motors: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateAmazonMotorsRequest**](CreateAmazonMotorsRequest.md)| This contains the message body for a message. | 
 **marketplace_ids** | [**Array&lt;String&gt;**](String.md)| A marketplace identifier. This identifies the marketplace in which the order was placed. You can only specify one marketplace. | 
 **amazon_order_id** | **String**| An Amazon order identifier. This identifies the order for which a message is sent. | 

### Return type

[**CreateAmazonMotorsResponse**](CreateAmazonMotorsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/hal+json



# **create_confirm_delivery_details**
> CreateConfirmDeliveryDetailsResponse create_confirm_delivery_details(bodymarketplace_idsamazon_order_id)



Sends a message to a buyer to arrange a delivery or to confirm contact information for making a delivery.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 1 | 5 |  The `x-amzn-RateLimit-Limit` response header contains the usage plan rate limits for the operation, when available. The preceding table contains the default rate and burst values for this operation. Selling partners whose business demands require higher throughput might have higher rate and burst values than those shown here. For more information, refer to [Usage Plans and Rate Limits](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'messaging-api-model'

api_instance = AmzSpApi::MessagingApiModel::MessagingApi.new
body = AmzSpApi::MessagingApiModel::CreateConfirmDeliveryDetailsRequest.new # CreateConfirmDeliveryDetailsRequest | This contains the message body for a message.
marketplace_ids = ['marketplace_ids_example'] # Array<String> | A marketplace identifier. This identifies the marketplace in which the order was placed. You can only specify one marketplace.
amazon_order_id = 'amazon_order_id_example' # String | An Amazon order identifier. This identifies the order for which a message is sent.


begin
  result = api_instance.create_confirm_delivery_details(bodymarketplace_idsamazon_order_id)
  p result
rescue AmzSpApi::MessagingApiModel::ApiError => e
  puts "Exception when calling MessagingApi->create_confirm_delivery_details: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateConfirmDeliveryDetailsRequest**](CreateConfirmDeliveryDetailsRequest.md)| This contains the message body for a message. | 
 **marketplace_ids** | [**Array&lt;String&gt;**](String.md)| A marketplace identifier. This identifies the marketplace in which the order was placed. You can only specify one marketplace. | 
 **amazon_order_id** | **String**| An Amazon order identifier. This identifies the order for which a message is sent. | 

### Return type

[**CreateConfirmDeliveryDetailsResponse**](CreateConfirmDeliveryDetailsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/hal+json



# **create_confirm_order_details**
> CreateConfirmOrderDetailsResponse create_confirm_order_details(bodymarketplace_idsamazon_order_id)



Sends a message to ask a buyer an order-related question prior to shipping their order.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 1 | 5 |  The `x-amzn-RateLimit-Limit` response header contains the usage plan rate limits for the operation, when available. The preceding table contains the default rate and burst values for this operation. Selling partners whose business demands require higher throughput might have higher rate and burst values than those shown here. For more information, refer to [Usage Plans and Rate Limits](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'messaging-api-model'

api_instance = AmzSpApi::MessagingApiModel::MessagingApi.new
body = AmzSpApi::MessagingApiModel::CreateConfirmOrderDetailsRequest.new # CreateConfirmOrderDetailsRequest | This contains the message body for a message.
marketplace_ids = ['marketplace_ids_example'] # Array<String> | A marketplace identifier. This identifies the marketplace in which the order was placed. You can only specify one marketplace.
amazon_order_id = 'amazon_order_id_example' # String | An Amazon order identifier. This identifies the order for which a message is sent.


begin
  result = api_instance.create_confirm_order_details(bodymarketplace_idsamazon_order_id)
  p result
rescue AmzSpApi::MessagingApiModel::ApiError => e
  puts "Exception when calling MessagingApi->create_confirm_order_details: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateConfirmOrderDetailsRequest**](CreateConfirmOrderDetailsRequest.md)| This contains the message body for a message. | 
 **marketplace_ids** | [**Array&lt;String&gt;**](String.md)| A marketplace identifier. This identifies the marketplace in which the order was placed. You can only specify one marketplace. | 
 **amazon_order_id** | **String**| An Amazon order identifier. This identifies the order for which a message is sent. | 

### Return type

[**CreateConfirmOrderDetailsResponse**](CreateConfirmOrderDetailsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/hal+json



# **create_confirm_service_details**
> CreateConfirmServiceDetailsResponse create_confirm_service_details(bodymarketplace_idsamazon_order_id)



Sends a message to contact a Home Service customer to arrange a service call or to gather information prior to a service call.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 1 | 5 |  The `x-amzn-RateLimit-Limit` response header contains the usage plan rate limits for the operation, when available. The preceding table contains the default rate and burst values for this operation. Selling partners whose business demands require higher throughput might have higher rate and burst values than those shown here. For more information, refer to [Usage Plans and Rate Limits](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'messaging-api-model'

api_instance = AmzSpApi::MessagingApiModel::MessagingApi.new
body = AmzSpApi::MessagingApiModel::CreateConfirmServiceDetailsRequest.new # CreateConfirmServiceDetailsRequest | This contains the message body for a message.
marketplace_ids = ['marketplace_ids_example'] # Array<String> | A marketplace identifier. This identifies the marketplace in which the order was placed. You can only specify one marketplace.
amazon_order_id = 'amazon_order_id_example' # String | An Amazon order identifier. This identifies the order for which a message is sent.


begin
  result = api_instance.create_confirm_service_details(bodymarketplace_idsamazon_order_id)
  p result
rescue AmzSpApi::MessagingApiModel::ApiError => e
  puts "Exception when calling MessagingApi->create_confirm_service_details: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateConfirmServiceDetailsRequest**](CreateConfirmServiceDetailsRequest.md)| This contains the message body for a message. | 
 **marketplace_ids** | [**Array&lt;String&gt;**](String.md)| A marketplace identifier. This identifies the marketplace in which the order was placed. You can only specify one marketplace. | 
 **amazon_order_id** | **String**| An Amazon order identifier. This identifies the order for which a message is sent. | 

### Return type

[**CreateConfirmServiceDetailsResponse**](CreateConfirmServiceDetailsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/hal+json



# **create_digital_access_key**
> CreateDigitalAccessKeyResponse create_digital_access_key(bodymarketplace_idsamazon_order_id)



Sends a buyer a message to share a digital access key that is required to utilize digital content in their order.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 1 | 5 |  The `x-amzn-RateLimit-Limit` response header contains the usage plan rate limits for the operation, when available. The preceding table contains the default rate and burst values for this operation. Selling partners whose business demands require higher throughput might have higher rate and burst values than those shown here. For more information, refer to [Usage Plans and Rate Limits](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'messaging-api-model'

api_instance = AmzSpApi::MessagingApiModel::MessagingApi.new
body = AmzSpApi::MessagingApiModel::CreateDigitalAccessKeyRequest.new # CreateDigitalAccessKeyRequest | This contains the message body for a message.
marketplace_ids = ['marketplace_ids_example'] # Array<String> | A marketplace identifier. This identifies the marketplace in which the order was placed. You can only specify one marketplace.
amazon_order_id = 'amazon_order_id_example' # String | An Amazon order identifier. This identifies the order for which a message is sent.


begin
  result = api_instance.create_digital_access_key(bodymarketplace_idsamazon_order_id)
  p result
rescue AmzSpApi::MessagingApiModel::ApiError => e
  puts "Exception when calling MessagingApi->create_digital_access_key: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateDigitalAccessKeyRequest**](CreateDigitalAccessKeyRequest.md)| This contains the message body for a message. | 
 **marketplace_ids** | [**Array&lt;String&gt;**](String.md)| A marketplace identifier. This identifies the marketplace in which the order was placed. You can only specify one marketplace. | 
 **amazon_order_id** | **String**| An Amazon order identifier. This identifies the order for which a message is sent. | 

### Return type

[**CreateDigitalAccessKeyResponse**](CreateDigitalAccessKeyResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/hal+json



# **create_legal_disclosure**
> CreateLegalDisclosureResponse create_legal_disclosure(bodymarketplace_idsamazon_order_id)



Sends a critical message that contains documents that a seller is legally obligated to provide to the buyer. This message should only be used to deliver documents that are required by law.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 1 | 5 |  The `x-amzn-RateLimit-Limit` response header contains the usage plan rate limits for the operation, when available. The preceding table contains the default rate and burst values for this operation. Selling partners whose business demands require higher throughput might have higher rate and burst values than those shown here. For more information, refer to [Usage Plans and Rate Limits](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'messaging-api-model'

api_instance = AmzSpApi::MessagingApiModel::MessagingApi.new
body = AmzSpApi::MessagingApiModel::CreateLegalDisclosureRequest.new # CreateLegalDisclosureRequest | This contains the message body for a message.
marketplace_ids = ['marketplace_ids_example'] # Array<String> | A marketplace identifier. This identifies the marketplace in which the order was placed. You can only specify one marketplace.
amazon_order_id = 'amazon_order_id_example' # String | An Amazon order identifier. This identifies the order for which a message is sent.


begin
  result = api_instance.create_legal_disclosure(bodymarketplace_idsamazon_order_id)
  p result
rescue AmzSpApi::MessagingApiModel::ApiError => e
  puts "Exception when calling MessagingApi->create_legal_disclosure: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateLegalDisclosureRequest**](CreateLegalDisclosureRequest.md)| This contains the message body for a message. | 
 **marketplace_ids** | [**Array&lt;String&gt;**](String.md)| A marketplace identifier. This identifies the marketplace in which the order was placed. You can only specify one marketplace. | 
 **amazon_order_id** | **String**| An Amazon order identifier. This identifies the order for which a message is sent. | 

### Return type

[**CreateLegalDisclosureResponse**](CreateLegalDisclosureResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/hal+json



# **create_unexpected_problem**
> CreateUnexpectedProblemResponse create_unexpected_problem(bodymarketplace_idsamazon_order_id)



Sends a critical message to a buyer that an unexpected problem was encountered affecting the completion of the order.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 1 | 5 |  The `x-amzn-RateLimit-Limit` response header contains the usage plan rate limits for the operation, when available. The preceding table contains the default rate and burst values for this operation. Selling partners whose business demands require higher throughput might have higher rate and burst values than those shown here. For more information, refer to [Usage Plans and Rate Limits](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'messaging-api-model'

api_instance = AmzSpApi::MessagingApiModel::MessagingApi.new
body = AmzSpApi::MessagingApiModel::CreateUnexpectedProblemRequest.new # CreateUnexpectedProblemRequest | This contains the message body for a message.
marketplace_ids = ['marketplace_ids_example'] # Array<String> | A marketplace identifier. This identifies the marketplace in which the order was placed. You can only specify one marketplace.
amazon_order_id = 'amazon_order_id_example' # String | An Amazon order identifier. This identifies the order for which a message is sent.


begin
  result = api_instance.create_unexpected_problem(bodymarketplace_idsamazon_order_id)
  p result
rescue AmzSpApi::MessagingApiModel::ApiError => e
  puts "Exception when calling MessagingApi->create_unexpected_problem: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateUnexpectedProblemRequest**](CreateUnexpectedProblemRequest.md)| This contains the message body for a message. | 
 **marketplace_ids** | [**Array&lt;String&gt;**](String.md)| A marketplace identifier. This identifies the marketplace in which the order was placed. You can only specify one marketplace. | 
 **amazon_order_id** | **String**| An Amazon order identifier. This identifies the order for which a message is sent. | 

### Return type

[**CreateUnexpectedProblemResponse**](CreateUnexpectedProblemResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/hal+json



# **create_warranty**
> CreateWarrantyResponse create_warranty(bodymarketplace_idsamazon_order_id)



Sends a message to a buyer to provide details about warranty information on a purchase in their order.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 1 | 5 |  The `x-amzn-RateLimit-Limit` response header contains the usage plan rate limits for the operation, when available. The preceding table contains the default rate and burst values for this operation. Selling partners whose business demands require higher throughput might have higher rate and burst values than those shown here. For more information, refer to [Usage Plans and Rate Limits](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'messaging-api-model'

api_instance = AmzSpApi::MessagingApiModel::MessagingApi.new
body = AmzSpApi::MessagingApiModel::CreateWarrantyRequest.new # CreateWarrantyRequest | This contains the message body for a message.
marketplace_ids = ['marketplace_ids_example'] # Array<String> | A marketplace identifier. This identifies the marketplace in which the order was placed. You can only specify one marketplace.
amazon_order_id = 'amazon_order_id_example' # String | An Amazon order identifier. This identifies the order for which a message is sent.


begin
  result = api_instance.create_warranty(bodymarketplace_idsamazon_order_id)
  p result
rescue AmzSpApi::MessagingApiModel::ApiError => e
  puts "Exception when calling MessagingApi->create_warranty: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateWarrantyRequest**](CreateWarrantyRequest.md)| This contains the message body for a message. | 
 **marketplace_ids** | [**Array&lt;String&gt;**](String.md)| A marketplace identifier. This identifies the marketplace in which the order was placed. You can only specify one marketplace. | 
 **amazon_order_id** | **String**| An Amazon order identifier. This identifies the order for which a message is sent. | 

### Return type

[**CreateWarrantyResponse**](CreateWarrantyResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/hal+json



# **get_attributes**
> GetAttributesResponse get_attributes(amazon_order_id, marketplace_ids)



Returns a response containing attributes related to an order. This includes buyer preferences.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 1 | 5 |

### Example
```ruby
# load the gem
require 'messaging-api-model'

api_instance = AmzSpApi::MessagingApiModel::MessagingApi.new
amazon_order_id = 'amazon_order_id_example' # String | An Amazon order identifier. This identifies the order for which a message is sent.
marketplace_ids = ['marketplace_ids_example'] # Array<String> | A marketplace identifier. This identifies the marketplace in which the order was placed. You can only specify one marketplace.


begin
  result = api_instance.get_attributes(amazon_order_id, marketplace_ids)
  p result
rescue AmzSpApi::MessagingApiModel::ApiError => e
  puts "Exception when calling MessagingApi->get_attributes: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **amazon_order_id** | **String**| An Amazon order identifier. This identifies the order for which a message is sent. | 
 **marketplace_ids** | [**Array&lt;String&gt;**](String.md)| A marketplace identifier. This identifies the marketplace in which the order was placed. You can only specify one marketplace. | 

### Return type

[**GetAttributesResponse**](GetAttributesResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json



# **get_messaging_actions_for_order**
> GetMessagingActionsForOrderResponse get_messaging_actions_for_order(amazon_order_id, marketplace_ids)



Returns a list of message types that are available for an order that you specify. A message type is represented by an actions object, which contains a path and query parameter(s). You can use the path and parameter(s) to call an operation that sends a message.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 1 | 5 |  The `x-amzn-RateLimit-Limit` response header contains the usage plan rate limits for the operation, when available. The preceding table contains the default rate and burst values for this operation. Selling partners whose business demands require higher throughput might have higher rate and burst values than those shown here. For more information, refer to [Usage Plans and Rate Limits](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'messaging-api-model'

api_instance = AmzSpApi::MessagingApiModel::MessagingApi.new
amazon_order_id = 'amazon_order_id_example' # String | An Amazon order identifier. This specifies the order for which you want a list of available message types.
marketplace_ids = ['marketplace_ids_example'] # Array<String> | A marketplace identifier. This identifies the marketplace in which the order was placed. You can only specify one marketplace.


begin
  result = api_instance.get_messaging_actions_for_order(amazon_order_id, marketplace_ids)
  p result
rescue AmzSpApi::MessagingApiModel::ApiError => e
  puts "Exception when calling MessagingApi->get_messaging_actions_for_order: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **amazon_order_id** | **String**| An Amazon order identifier. This specifies the order for which you want a list of available message types. | 
 **marketplace_ids** | [**Array&lt;String&gt;**](String.md)| A marketplace identifier. This identifies the marketplace in which the order was placed. You can only specify one marketplace. | 

### Return type

[**GetMessagingActionsForOrderResponse**](GetMessagingActionsForOrderResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json



# **send_invoice**
> InvoiceResponse send_invoice(bodymarketplace_idsamazon_order_id)



Sends a message providing the buyer an invoice

### Example
```ruby
# load the gem
require 'messaging-api-model'

api_instance = AmzSpApi::MessagingApiModel::MessagingApi.new
body = AmzSpApi::MessagingApiModel::InvoiceRequest.new # InvoiceRequest | This contains the message body for a message.
marketplace_ids = ['marketplace_ids_example'] # Array<String> | A marketplace identifier. This identifies the marketplace in which the order was placed. You can only specify one marketplace.
amazon_order_id = 'amazon_order_id_example' # String | An Amazon order identifier. This identifies the order for which a message is sent.


begin
  result = api_instance.send_invoice(bodymarketplace_idsamazon_order_id)
  p result
rescue AmzSpApi::MessagingApiModel::ApiError => e
  puts "Exception when calling MessagingApi->send_invoice: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**InvoiceRequest**](InvoiceRequest.md)| This contains the message body for a message. | 
 **marketplace_ids** | [**Array&lt;String&gt;**](String.md)| A marketplace identifier. This identifies the marketplace in which the order was placed. You can only specify one marketplace. | 
 **amazon_order_id** | **String**| An Amazon order identifier. This identifies the order for which a message is sent. | 

### Return type

[**InvoiceResponse**](InvoiceResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/hal+json



