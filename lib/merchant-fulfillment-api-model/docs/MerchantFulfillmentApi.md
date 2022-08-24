# AmzSpApi::MerchantFulfillmentApiModel::MerchantFulfillmentApi

All URIs are relative to *https://sellingpartnerapi-na.amazon.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cancel_shipment**](MerchantFulfillmentApi.md#cancel_shipment) | **DELETE** /mfn/v0/shipments/{shipmentId} | 
[**cancel_shipment_old**](MerchantFulfillmentApi.md#cancel_shipment_old) | **PUT** /mfn/v0/shipments/{shipmentId}/cancel | 
[**create_shipment**](MerchantFulfillmentApi.md#create_shipment) | **POST** /mfn/v0/shipments | 
[**get_additional_seller_inputs**](MerchantFulfillmentApi.md#get_additional_seller_inputs) | **POST** /mfn/v0/additionalSellerInputs | 
[**get_additional_seller_inputs_old**](MerchantFulfillmentApi.md#get_additional_seller_inputs_old) | **POST** /mfn/v0/sellerInputs | 
[**get_eligible_shipment_services**](MerchantFulfillmentApi.md#get_eligible_shipment_services) | **POST** /mfn/v0/eligibleShippingServices | 
[**get_eligible_shipment_services_old**](MerchantFulfillmentApi.md#get_eligible_shipment_services_old) | **POST** /mfn/v0/eligibleServices | 
[**get_shipment**](MerchantFulfillmentApi.md#get_shipment) | **GET** /mfn/v0/shipments/{shipmentId} | 

# **cancel_shipment**
> CancelShipmentResponse cancel_shipment(shipment_id)



Cancel the shipment indicated by the specified shipment identifier.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 1 | 1 |  For more information, see \"Usage Plans and Rate Limits\" in the Selling Partner API documentation.

### Example
```ruby
# load the gem
require 'merchant-fulfillment-api-model'

api_instance = AmzSpApi::MerchantFulfillmentApiModel::MerchantFulfillmentApi.new
shipment_id = 'shipment_id_example' # String | The Amazon-defined shipment identifier for the shipment to cancel.


begin
  result = api_instance.cancel_shipment(shipment_id)
  p result
rescue AmzSpApi::MerchantFulfillmentApiModel::ApiError => e
  puts "Exception when calling MerchantFulfillmentApi->cancel_shipment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **shipment_id** | **String**| The Amazon-defined shipment identifier for the shipment to cancel. | 

### Return type

[**CancelShipmentResponse**](CancelShipmentResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **cancel_shipment_old**
> CancelShipmentResponse cancel_shipment_old(shipment_id)



Cancel the shipment indicated by the specified shipment identifer.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 1 | 1 |  For more information, see \"Usage Plans and Rate Limits\" in the Selling Partner API documentation.

### Example
```ruby
# load the gem
require 'merchant-fulfillment-api-model'

api_instance = AmzSpApi::MerchantFulfillmentApiModel::MerchantFulfillmentApi.new
shipment_id = 'shipment_id_example' # String | The Amazon-defined shipment identifier for the shipment to cancel.


begin
  result = api_instance.cancel_shipment_old(shipment_id)
  p result
rescue AmzSpApi::MerchantFulfillmentApiModel::ApiError => e
  puts "Exception when calling MerchantFulfillmentApi->cancel_shipment_old: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **shipment_id** | **String**| The Amazon-defined shipment identifier for the shipment to cancel. | 

### Return type

[**CancelShipmentResponse**](CancelShipmentResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **create_shipment**
> CreateShipmentResponse create_shipment(body)



Create a shipment with the information provided.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 1 | 1 |  For more information, see \"Usage Plans and Rate Limits\" in the Selling Partner API documentation.

### Example
```ruby
# load the gem
require 'merchant-fulfillment-api-model'

api_instance = AmzSpApi::MerchantFulfillmentApiModel::MerchantFulfillmentApi.new
body = AmzSpApi::MerchantFulfillmentApiModel::CreateShipmentRequest.new # CreateShipmentRequest | 


begin
  result = api_instance.create_shipment(body)
  p result
rescue AmzSpApi::MerchantFulfillmentApiModel::ApiError => e
  puts "Exception when calling MerchantFulfillmentApi->create_shipment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateShipmentRequest**](CreateShipmentRequest.md)|  | 

### Return type

[**CreateShipmentResponse**](CreateShipmentResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_additional_seller_inputs**
> GetAdditionalSellerInputsResponse get_additional_seller_inputs(body)



Gets a list of additional seller inputs required for a ship method. This is generally used for international shipping.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 1 | 1 |  For more information, see \"Usage Plans and Rate Limits\" in the Selling Partner API documentation.

### Example
```ruby
# load the gem
require 'merchant-fulfillment-api-model'

api_instance = AmzSpApi::MerchantFulfillmentApiModel::MerchantFulfillmentApi.new
body = AmzSpApi::MerchantFulfillmentApiModel::GetAdditionalSellerInputsRequest.new # GetAdditionalSellerInputsRequest | 


begin
  result = api_instance.get_additional_seller_inputs(body)
  p result
rescue AmzSpApi::MerchantFulfillmentApiModel::ApiError => e
  puts "Exception when calling MerchantFulfillmentApi->get_additional_seller_inputs: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**GetAdditionalSellerInputsRequest**](GetAdditionalSellerInputsRequest.md)|  | 

### Return type

[**GetAdditionalSellerInputsResponse**](GetAdditionalSellerInputsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_additional_seller_inputs_old**
> GetAdditionalSellerInputsResponse get_additional_seller_inputs_old(body)



Get a list of additional seller inputs required for a ship method. This is generally used for international shipping.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 1 | 1 |  For more information, see \"Usage Plans and Rate Limits\" in the Selling Partner API documentation.

### Example
```ruby
# load the gem
require 'merchant-fulfillment-api-model'

api_instance = AmzSpApi::MerchantFulfillmentApiModel::MerchantFulfillmentApi.new
body = AmzSpApi::MerchantFulfillmentApiModel::GetAdditionalSellerInputsRequest.new # GetAdditionalSellerInputsRequest | 


begin
  result = api_instance.get_additional_seller_inputs_old(body)
  p result
rescue AmzSpApi::MerchantFulfillmentApiModel::ApiError => e
  puts "Exception when calling MerchantFulfillmentApi->get_additional_seller_inputs_old: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**GetAdditionalSellerInputsRequest**](GetAdditionalSellerInputsRequest.md)|  | 

### Return type

[**GetAdditionalSellerInputsResponse**](GetAdditionalSellerInputsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_eligible_shipment_services**
> GetEligibleShipmentServicesResponse get_eligible_shipment_services(body)



Returns a list of shipping service offers that satisfy the specified shipment request details.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 5 | 10 |  For more information, see \"Usage Plans and Rate Limits\" in the Selling Partner API documentation.

### Example
```ruby
# load the gem
require 'merchant-fulfillment-api-model'

api_instance = AmzSpApi::MerchantFulfillmentApiModel::MerchantFulfillmentApi.new
body = AmzSpApi::MerchantFulfillmentApiModel::GetEligibleShipmentServicesRequest.new # GetEligibleShipmentServicesRequest | 


begin
  result = api_instance.get_eligible_shipment_services(body)
  p result
rescue AmzSpApi::MerchantFulfillmentApiModel::ApiError => e
  puts "Exception when calling MerchantFulfillmentApi->get_eligible_shipment_services: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**GetEligibleShipmentServicesRequest**](GetEligibleShipmentServicesRequest.md)|  | 

### Return type

[**GetEligibleShipmentServicesResponse**](GetEligibleShipmentServicesResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_eligible_shipment_services_old**
> GetEligibleShipmentServicesResponse get_eligible_shipment_services_old(body)



Returns a list of shipping service offers that satisfy the specified shipment request details.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 1 | 1 |  For more information, see \"Usage Plans and Rate Limits\" in the Selling Partner API documentation.

### Example
```ruby
# load the gem
require 'merchant-fulfillment-api-model'

api_instance = AmzSpApi::MerchantFulfillmentApiModel::MerchantFulfillmentApi.new
body = AmzSpApi::MerchantFulfillmentApiModel::GetEligibleShipmentServicesRequest.new # GetEligibleShipmentServicesRequest | 


begin
  result = api_instance.get_eligible_shipment_services_old(body)
  p result
rescue AmzSpApi::MerchantFulfillmentApiModel::ApiError => e
  puts "Exception when calling MerchantFulfillmentApi->get_eligible_shipment_services_old: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**GetEligibleShipmentServicesRequest**](GetEligibleShipmentServicesRequest.md)|  | 

### Return type

[**GetEligibleShipmentServicesResponse**](GetEligibleShipmentServicesResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_shipment**
> GetShipmentResponse get_shipment(shipment_id)



Returns the shipment information for an existing shipment.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 1 | 1 |  For more information, see \"Usage Plans and Rate Limits\" in the Selling Partner API documentation.

### Example
```ruby
# load the gem
require 'merchant-fulfillment-api-model'

api_instance = AmzSpApi::MerchantFulfillmentApiModel::MerchantFulfillmentApi.new
shipment_id = 'shipment_id_example' # String | The Amazon-defined shipment identifier for the shipment.


begin
  result = api_instance.get_shipment(shipment_id)
  p result
rescue AmzSpApi::MerchantFulfillmentApiModel::ApiError => e
  puts "Exception when calling MerchantFulfillmentApi->get_shipment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **shipment_id** | **String**| The Amazon-defined shipment identifier for the shipment. | 

### Return type

[**GetShipmentResponse**](GetShipmentResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



