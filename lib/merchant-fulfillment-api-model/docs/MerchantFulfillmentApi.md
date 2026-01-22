# AmzSpApi::MerchantFulfillmentApiModel::MerchantFulfillmentApi

All URIs are relative to *https://sellingpartnerapi-na.amazon.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cancel_shipment**](MerchantFulfillmentApi.md#cancel_shipment) | **DELETE** /mfn/v0/shipments/{shipmentId} | 
[**create_shipment**](MerchantFulfillmentApi.md#create_shipment) | **POST** /mfn/v0/shipments | 
[**get_additional_seller_inputs**](MerchantFulfillmentApi.md#get_additional_seller_inputs) | **POST** /mfn/v0/additionalSellerInputs | 
[**get_eligible_shipment_services**](MerchantFulfillmentApi.md#get_eligible_shipment_services) | **POST** /mfn/v0/eligibleShippingServices | 
[**get_shipment**](MerchantFulfillmentApi.md#get_shipment) | **GET** /mfn/v0/shipments/{shipmentId} | 

# **cancel_shipment**
> CancelShipmentResponse cancel_shipment(shipment_id)



Cancel the shipment indicated by the specified shipment identifier.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 1 | 1 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that are applied to the requested operation when available. The preceding table indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may have higher rate and burst values than those shown here. For more information, refer to [Usage Plans and Rate Limits in the SP-API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).

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



# **create_shipment**
> CreateShipmentResponse create_shipment(body)



Create a shipment with the information provided.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 2 | 2 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that are applied to the requested operation when available. The preceding table indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may have higher rate and burst values than those shown here. For more information, refer to [Usage Plans and Rate Limits in the SP-API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'merchant-fulfillment-api-model'

api_instance = AmzSpApi::MerchantFulfillmentApiModel::MerchantFulfillmentApi.new
body = AmzSpApi::MerchantFulfillmentApiModel::CreateShipmentRequest.new # CreateShipmentRequest | The request schema for the `CreateShipment` operation.


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
 **body** | [**CreateShipmentRequest**](CreateShipmentRequest.md)| The request schema for the &#x60;CreateShipment&#x60; operation. | 

### Return type

[**CreateShipmentResponse**](CreateShipmentResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_additional_seller_inputs**
> GetAdditionalSellerInputsResponse get_additional_seller_inputs(body)



Gets a list of additional seller inputs required for a ship method. This is generally used for international shipping.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 1 | 1 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that are applied to the requested operation when available. The preceding table indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may have higher rate and burst values than those shown here. For more information, refer to [Usage Plans and Rate Limits in the SP-API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'merchant-fulfillment-api-model'

api_instance = AmzSpApi::MerchantFulfillmentApiModel::MerchantFulfillmentApi.new
body = AmzSpApi::MerchantFulfillmentApiModel::GetAdditionalSellerInputsRequest.new # GetAdditionalSellerInputsRequest | The request schema for the `GetAdditionalSellerInputs` operation.


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
 **body** | [**GetAdditionalSellerInputsRequest**](GetAdditionalSellerInputsRequest.md)| The request schema for the &#x60;GetAdditionalSellerInputs&#x60; operation. | 

### Return type

[**GetAdditionalSellerInputsResponse**](GetAdditionalSellerInputsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_eligible_shipment_services**
> GetEligibleShipmentServicesResponse get_eligible_shipment_services(body)



Returns a list of shipping service offers that satisfy the specified shipment request details.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 6 | 12 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that are applied to the requested operation when available. The preceding table indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may have higher rate and burst values than those shown here. For more information, refer to [Usage Plans and Rate Limits in the SP-API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'merchant-fulfillment-api-model'

api_instance = AmzSpApi::MerchantFulfillmentApiModel::MerchantFulfillmentApi.new
body = AmzSpApi::MerchantFulfillmentApiModel::GetEligibleShipmentServicesRequest.new # GetEligibleShipmentServicesRequest | The request schema for the `GetEligibleShipmentServices` operation.


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
 **body** | [**GetEligibleShipmentServicesRequest**](GetEligibleShipmentServicesRequest.md)| The request schema for the &#x60;GetEligibleShipmentServices&#x60; operation. | 

### Return type

[**GetEligibleShipmentServicesResponse**](GetEligibleShipmentServicesResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_shipment**
> GetShipmentResponse get_shipment(shipment_id)



Returns the shipment information for an existing shipment.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 1 | 1 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that are applied to the requested operation when available. The preceding table indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may have higher rate and burst values than those shown here. For more information, refer to [Usage Plans and Rate Limits in the SP-API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).

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



