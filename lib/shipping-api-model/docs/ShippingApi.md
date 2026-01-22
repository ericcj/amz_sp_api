# AmzSpApi::ShippingApiModel::ShippingApi

All URIs are relative to *https://sellingpartnerapi-eu.amazon.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cancel_shipment**](ShippingApi.md#cancel_shipment) | **PUT** /shipping/v2/shipments/{shipmentId}/cancel | 
[**create_claim**](ShippingApi.md#create_claim) | **POST** /shipping/v2/claims | 
[**direct_purchase_shipment**](ShippingApi.md#direct_purchase_shipment) | **POST** /shipping/v2/shipments/directPurchase | 
[**generate_collection_form**](ShippingApi.md#generate_collection_form) | **POST** /shipping/v2/collectionForms | 
[**get_access_points**](ShippingApi.md#get_access_points) | **GET** /shipping/v2/accessPoints | 
[**get_additional_inputs**](ShippingApi.md#get_additional_inputs) | **GET** /shipping/v2/shipments/additionalInputs/schema | 
[**get_carrier_account_form_inputs**](ShippingApi.md#get_carrier_account_form_inputs) | **GET** /shipping/v2/carrierAccountFormInputs | 
[**get_carrier_accounts**](ShippingApi.md#get_carrier_accounts) | **PUT** /shipping/v2/carrierAccounts | 
[**get_collection_form**](ShippingApi.md#get_collection_form) | **GET** /shipping/v2/collectionForms/{collectionFormId} | 
[**get_collection_form_history**](ShippingApi.md#get_collection_form_history) | **PUT** /shipping/v2/collectionForms/history | 
[**get_rates**](ShippingApi.md#get_rates) | **POST** /shipping/v2/shipments/rates | 
[**get_shipment_documents**](ShippingApi.md#get_shipment_documents) | **GET** /shipping/v2/shipments/{shipmentId}/documents | 
[**get_tracking**](ShippingApi.md#get_tracking) | **GET** /shipping/v2/tracking | 
[**get_unmanifested_shipments**](ShippingApi.md#get_unmanifested_shipments) | **PUT** /shipping/v2/unmanifestedShipments | 
[**link_carrier_account**](ShippingApi.md#link_carrier_account) | **PUT** /shipping/v2/carrierAccounts/{carrierId} | 
[**link_carrier_account_0**](ShippingApi.md#link_carrier_account_0) | **POST** /shipping/v2/carrierAccounts/{carrierId} | 
[**one_click_shipment**](ShippingApi.md#one_click_shipment) | **POST** /shipping/v2/oneClickShipment | 
[**purchase_shipment**](ShippingApi.md#purchase_shipment) | **POST** /shipping/v2/shipments | 
[**submit_ndr_feedback**](ShippingApi.md#submit_ndr_feedback) | **POST** /shipping/v2/ndrFeedback | 
[**unlink_carrier_account**](ShippingApi.md#unlink_carrier_account) | **PUT** /shipping/v2/carrierAccounts/{carrierId}/unlink | 

# **cancel_shipment**
> CancelShipmentResponse cancel_shipment(shipment_id, opts)



Cancels a purchased shipment. Returns an empty object if the shipment is successfully cancelled.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 80 | 100 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values then those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'shipping-api-model'

api_instance = AmzSpApi::ShippingApiModel::ShippingApi.new
shipment_id = 'shipment_id_example' # String | The shipment identifier originally returned by the purchaseShipment operation.
opts = { 
  x_amzn_shipping_business_id: 'x_amzn_shipping_business_id_example' # String | Amazon shipping business to assume for this request. The default is AmazonShipping_UK.
}

begin
  result = api_instance.cancel_shipment(shipment_id, opts)
  p result
rescue AmzSpApi::ShippingApiModel::ApiError => e
  puts "Exception when calling ShippingApi->cancel_shipment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **shipment_id** | **String**| The shipment identifier originally returned by the purchaseShipment operation. | 
 **x_amzn_shipping_business_id** | **String**| Amazon shipping business to assume for this request. The default is AmazonShipping_UK. | [optional] 

### Return type

[**CancelShipmentResponse**](CancelShipmentResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **create_claim**
> CreateClaimResponse create_claim(body, opts)



This API will be used to create claim for single eligible shipment.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 80 | 100 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values then those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](doc:usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'shipping-api-model'

api_instance = AmzSpApi::ShippingApiModel::ShippingApi.new
body = AmzSpApi::ShippingApiModel::CreateClaimRequest.new # CreateClaimRequest | Request body for the createClaim operation
opts = { 
  x_amzn_shipping_business_id: 'x_amzn_shipping_business_id_example' # String | Amazon shipping business to assume for this request. The default is AmazonShipping_UK.
}

begin
  result = api_instance.create_claim(body, opts)
  p result
rescue AmzSpApi::ShippingApiModel::ApiError => e
  puts "Exception when calling ShippingApi->create_claim: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateClaimRequest**](CreateClaimRequest.md)| Request body for the createClaim operation | 
 **x_amzn_shipping_business_id** | **String**| Amazon shipping business to assume for this request. The default is AmazonShipping_UK. | [optional] 

### Return type

[**CreateClaimResponse**](CreateClaimResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **direct_purchase_shipment**
> DirectPurchaseResponse direct_purchase_shipment(body, opts)



Purchases the shipping service for a shipment using the best fit service offering. Returns purchase related details and documents.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 80 | 100 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values then those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'shipping-api-model'

api_instance = AmzSpApi::ShippingApiModel::ShippingApi.new
body = AmzSpApi::ShippingApiModel::DirectPurchaseRequest.new # DirectPurchaseRequest | DirectPurchaseRequest body
opts = { 
  x_amzn_idempotency_key: 'x_amzn_idempotency_key_example' # String | A unique value which the server uses to recognize subsequent retries of the same request.
  locale: 'locale_example' # String | The IETF Language Tag. Note that this only supports the primary language subtag with one secondary language subtag (i.e. en-US, fr-CA). The secondary language subtag is almost always a regional designation. This does not support additional subtags beyond the primary and secondary language subtags. 
  x_amzn_shipping_business_id: 'x_amzn_shipping_business_id_example' # String | Amazon shipping business to assume for this request. The default is AmazonShipping_UK.
}

begin
  result = api_instance.direct_purchase_shipment(body, opts)
  p result
rescue AmzSpApi::ShippingApiModel::ApiError => e
  puts "Exception when calling ShippingApi->direct_purchase_shipment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**DirectPurchaseRequest**](DirectPurchaseRequest.md)| DirectPurchaseRequest body | 
 **x_amzn_idempotency_key** | **String**| A unique value which the server uses to recognize subsequent retries of the same request. | [optional] 
 **locale** | **String**| The IETF Language Tag. Note that this only supports the primary language subtag with one secondary language subtag (i.e. en-US, fr-CA). The secondary language subtag is almost always a regional designation. This does not support additional subtags beyond the primary and secondary language subtags.  | [optional] 
 **x_amzn_shipping_business_id** | **String**| Amazon shipping business to assume for this request. The default is AmazonShipping_UK. | [optional] 

### Return type

[**DirectPurchaseResponse**](DirectPurchaseResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **generate_collection_form**
> GenerateCollectionFormResponse generate_collection_form(body, opts)



This API  Call to generate the collection form.   **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 80 | 100 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values then those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'shipping-api-model'

api_instance = AmzSpApi::ShippingApiModel::ShippingApi.new
body = AmzSpApi::ShippingApiModel::GenerateCollectionFormRequest.new # GenerateCollectionFormRequest | GenerateCollectionFormRequest body
opts = { 
  x_amzn_idempotency_key: 'x_amzn_idempotency_key_example' # String | A unique value which the server uses to recognize subsequent retries of the same request.
  x_amzn_shipping_business_id: 'x_amzn_shipping_business_id_example' # String | Amazon shipping business to assume for this request. The default is AmazonShipping_UK.
}

begin
  result = api_instance.generate_collection_form(body, opts)
  p result
rescue AmzSpApi::ShippingApiModel::ApiError => e
  puts "Exception when calling ShippingApi->generate_collection_form: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**GenerateCollectionFormRequest**](GenerateCollectionFormRequest.md)| GenerateCollectionFormRequest body | 
 **x_amzn_idempotency_key** | **String**| A unique value which the server uses to recognize subsequent retries of the same request. | [optional] 
 **x_amzn_shipping_business_id** | **String**| Amazon shipping business to assume for this request. The default is AmazonShipping_UK. | [optional] 

### Return type

[**GenerateCollectionFormResponse**](GenerateCollectionFormResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_access_points**
> GetAccessPointsResponse get_access_points(access_point_types, country_code, postal_code, opts)



Returns a list of access points in proximity of input postal code.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 80 | 100 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values then those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'shipping-api-model'

api_instance = AmzSpApi::ShippingApiModel::ShippingApi.new
access_point_types = ['access_point_types_example'] # Array<String> | Access point types
country_code = 'country_code_example' # String | Country code for access point
postal_code = 'postal_code_example' # String | postal code for access point
opts = { 
  x_amzn_shipping_business_id: 'x_amzn_shipping_business_id_example' # String | Amazon shipping business to assume for this request. The default is AmazonShipping_UK.
}

begin
  result = api_instance.get_access_points(access_point_types, country_code, postal_code, opts)
  p result
rescue AmzSpApi::ShippingApiModel::ApiError => e
  puts "Exception when calling ShippingApi->get_access_points: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **access_point_types** | [**Array&lt;String&gt;**](String.md)| Access point types | 
 **country_code** | **String**| Country code for access point | 
 **postal_code** | **String**| postal code for access point | 
 **x_amzn_shipping_business_id** | **String**| Amazon shipping business to assume for this request. The default is AmazonShipping_UK. | [optional] 

### Return type

[**GetAccessPointsResponse**](GetAccessPointsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_additional_inputs**
> GetAdditionalInputsResponse get_additional_inputs(request_token, rate_id, opts)



Returns the JSON schema to use for providing additional inputs when needed to purchase a shipping offering. Call the getAdditionalInputs operation when the response to a previous call to the getRates operation indicates that additional inputs are required for the rate (shipping offering) that you want to purchase.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 80 | 100 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values then those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'shipping-api-model'

api_instance = AmzSpApi::ShippingApiModel::ShippingApi.new
request_token = 'request_token_example' # String | The request token returned in the response to the getRates operation.
rate_id = 'rate_id_example' # String | The rate identifier for the shipping offering (rate) returned in the response to the getRates operation.
opts = { 
  x_amzn_shipping_business_id: 'x_amzn_shipping_business_id_example' # String | Amazon shipping business to assume for this request. The default is AmazonShipping_UK.
}

begin
  result = api_instance.get_additional_inputs(request_token, rate_id, opts)
  p result
rescue AmzSpApi::ShippingApiModel::ApiError => e
  puts "Exception when calling ShippingApi->get_additional_inputs: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_token** | **String**| The request token returned in the response to the getRates operation. | 
 **rate_id** | **String**| The rate identifier for the shipping offering (rate) returned in the response to the getRates operation. | 
 **x_amzn_shipping_business_id** | **String**| Amazon shipping business to assume for this request. The default is AmazonShipping_UK. | [optional] 

### Return type

[**GetAdditionalInputsResponse**](GetAdditionalInputsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_carrier_account_form_inputs**
> GetCarrierAccountFormInputsResponse get_carrier_account_form_inputs(opts)



This API will return a list of input schema required to register a shipper account with the carrier.   **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 80 | 100 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values then those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'shipping-api-model'

api_instance = AmzSpApi::ShippingApiModel::ShippingApi.new
opts = { 
  x_amzn_shipping_business_id: 'x_amzn_shipping_business_id_example' # String | Amazon shipping business to assume for this request. The default is AmazonShipping_UK.
}

begin
  result = api_instance.get_carrier_account_form_inputs(opts)
  p result
rescue AmzSpApi::ShippingApiModel::ApiError => e
  puts "Exception when calling ShippingApi->get_carrier_account_form_inputs: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_amzn_shipping_business_id** | **String**| Amazon shipping business to assume for this request. The default is AmazonShipping_UK. | [optional] 

### Return type

[**GetCarrierAccountFormInputsResponse**](GetCarrierAccountFormInputsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_carrier_accounts**
> GetCarrierAccountsResponse get_carrier_accounts(body, opts)



This API will return Get all carrier accounts for a merchant.   **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 80 | 100 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values then those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'shipping-api-model'

api_instance = AmzSpApi::ShippingApiModel::ShippingApi.new
body = AmzSpApi::ShippingApiModel::GetCarrierAccountsRequest.new # GetCarrierAccountsRequest | GetCarrierAccountsRequest body
opts = { 
  x_amzn_shipping_business_id: 'x_amzn_shipping_business_id_example' # String | Amazon shipping business to assume for this request. The default is AmazonShipping_UK.
}

begin
  result = api_instance.get_carrier_accounts(body, opts)
  p result
rescue AmzSpApi::ShippingApiModel::ApiError => e
  puts "Exception when calling ShippingApi->get_carrier_accounts: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**GetCarrierAccountsRequest**](GetCarrierAccountsRequest.md)| GetCarrierAccountsRequest body | 
 **x_amzn_shipping_business_id** | **String**| Amazon shipping business to assume for this request. The default is AmazonShipping_UK. | [optional] 

### Return type

[**GetCarrierAccountsResponse**](GetCarrierAccountsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_collection_form**
> GetCollectionFormResponse get_collection_form(collection_form_id, opts)



This API reprint a collection form.   **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 80 | 100 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values then those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'shipping-api-model'

api_instance = AmzSpApi::ShippingApiModel::ShippingApi.new
collection_form_id = 'collection_form_id_example' # String | collection form Id to reprint a collection.
opts = { 
  x_amzn_shipping_business_id: 'x_amzn_shipping_business_id_example' # String | Amazon shipping business to assume for this request. The default is AmazonShipping_UK.
}

begin
  result = api_instance.get_collection_form(collection_form_id, opts)
  p result
rescue AmzSpApi::ShippingApiModel::ApiError => e
  puts "Exception when calling ShippingApi->get_collection_form: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **collection_form_id** | **String**| collection form Id to reprint a collection. | 
 **x_amzn_shipping_business_id** | **String**| Amazon shipping business to assume for this request. The default is AmazonShipping_UK. | [optional] 

### Return type

[**GetCollectionFormResponse**](GetCollectionFormResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_collection_form_history**
> GetCollectionFormHistoryResponse get_collection_form_history(body, opts)



This API Call to get the history of the previously generated collection forms.   **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 80 | 100 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values then those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'shipping-api-model'

api_instance = AmzSpApi::ShippingApiModel::ShippingApi.new
body = AmzSpApi::ShippingApiModel::GetCollectionFormHistoryRequest.new # GetCollectionFormHistoryRequest | GetCollectionFormHistoryRequest body
opts = { 
  x_amzn_shipping_business_id: 'x_amzn_shipping_business_id_example' # String | Amazon shipping business to assume for this request. The default is AmazonShipping_UK.
}

begin
  result = api_instance.get_collection_form_history(body, opts)
  p result
rescue AmzSpApi::ShippingApiModel::ApiError => e
  puts "Exception when calling ShippingApi->get_collection_form_history: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**GetCollectionFormHistoryRequest**](GetCollectionFormHistoryRequest.md)| GetCollectionFormHistoryRequest body | 
 **x_amzn_shipping_business_id** | **String**| Amazon shipping business to assume for this request. The default is AmazonShipping_UK. | [optional] 

### Return type

[**GetCollectionFormHistoryResponse**](GetCollectionFormHistoryResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_rates**
> GetRatesResponse get_rates(body, opts)



Returns the available shipping service offerings.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 80 | 100 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values then those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'shipping-api-model'

api_instance = AmzSpApi::ShippingApiModel::ShippingApi.new
body = AmzSpApi::ShippingApiModel::GetRatesRequest.new # GetRatesRequest | GetRatesRequest body
opts = { 
  x_amzn_shipping_business_id: 'x_amzn_shipping_business_id_example' # String | Amazon shipping business to assume for this request. The default is AmazonShipping_UK.
}

begin
  result = api_instance.get_rates(body, opts)
  p result
rescue AmzSpApi::ShippingApiModel::ApiError => e
  puts "Exception when calling ShippingApi->get_rates: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**GetRatesRequest**](GetRatesRequest.md)| GetRatesRequest body | 
 **x_amzn_shipping_business_id** | **String**| Amazon shipping business to assume for this request. The default is AmazonShipping_UK. | [optional] 

### Return type

[**GetRatesResponse**](GetRatesResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_shipment_documents**
> GetShipmentDocumentsResponse get_shipment_documents(shipment_id, package_client_reference_id, opts)



Returns the shipping documents associated with a package in a shipment.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 80 | 100 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values then those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'shipping-api-model'

api_instance = AmzSpApi::ShippingApiModel::ShippingApi.new
shipment_id = 'shipment_id_example' # String | The shipment identifier originally returned by the purchaseShipment operation.
package_client_reference_id = 'package_client_reference_id_example' # String | The package client reference identifier originally provided in the request body parameter for the getRates operation.
opts = { 
  format: 'format_example', # String | The file format of the document. Must be one of the supported formats returned by the getRates operation.
  dpi: AmzSpApi::ShippingApiModel::BigDecimal.new, # BigDecimal | The resolution of the document (for example, 300 means 300 dots per inch). Must be one of the supported resolutions returned in the response to the getRates operation.
  x_amzn_shipping_business_id: 'x_amzn_shipping_business_id_example' # String | Amazon shipping business to assume for this request. The default is AmazonShipping_UK.
}

begin
  result = api_instance.get_shipment_documents(shipment_id, package_client_reference_id, opts)
  p result
rescue AmzSpApi::ShippingApiModel::ApiError => e
  puts "Exception when calling ShippingApi->get_shipment_documents: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **shipment_id** | **String**| The shipment identifier originally returned by the purchaseShipment operation. | 
 **package_client_reference_id** | **String**| The package client reference identifier originally provided in the request body parameter for the getRates operation. | 
 **format** | **String**| The file format of the document. Must be one of the supported formats returned by the getRates operation. | [optional] 
 **dpi** | **BigDecimal**| The resolution of the document (for example, 300 means 300 dots per inch). Must be one of the supported resolutions returned in the response to the getRates operation. | [optional] 
 **x_amzn_shipping_business_id** | **String**| Amazon shipping business to assume for this request. The default is AmazonShipping_UK. | [optional] 

### Return type

[**GetShipmentDocumentsResponse**](GetShipmentDocumentsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_tracking**
> GetTrackingResponse get_tracking(tracking_id, carrier_id, opts)



Returns tracking information for a purchased shipment.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 80 | 100 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values then those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'shipping-api-model'

api_instance = AmzSpApi::ShippingApiModel::ShippingApi.new
tracking_id = 'tracking_id_example' # String | A carrier-generated tracking identifier originally returned by the purchaseShipment operation.
carrier_id = 'carrier_id_example' # String | A carrier identifier originally returned by the getRates operation for the selected rate.
opts = { 
  x_amzn_shipping_business_id: 'x_amzn_shipping_business_id_example' # String | Amazon shipping business to assume for this request. The default is AmazonShipping_UK.
}

begin
  result = api_instance.get_tracking(tracking_id, carrier_id, opts)
  p result
rescue AmzSpApi::ShippingApiModel::ApiError => e
  puts "Exception when calling ShippingApi->get_tracking: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tracking_id** | **String**| A carrier-generated tracking identifier originally returned by the purchaseShipment operation. | 
 **carrier_id** | **String**| A carrier identifier originally returned by the getRates operation for the selected rate. | 
 **x_amzn_shipping_business_id** | **String**| Amazon shipping business to assume for this request. The default is AmazonShipping_UK. | [optional] 

### Return type

[**GetTrackingResponse**](GetTrackingResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_unmanifested_shipments**
> GetUnmanifestedShipmentsResponse get_unmanifested_shipments(body, opts)



This API Get all unmanifested carriers with shipment locations. Any locations which has unmanifested shipments         with an eligible carrier for manifesting shall be returned.   **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 80 | 100 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values then those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'shipping-api-model'

api_instance = AmzSpApi::ShippingApiModel::ShippingApi.new
body = AmzSpApi::ShippingApiModel::GetUnmanifestedShipmentsRequest.new # GetUnmanifestedShipmentsRequest | GetUmanifestedShipmentsRequest body
opts = { 
  x_amzn_shipping_business_id: 'x_amzn_shipping_business_id_example' # String | Amazon shipping business to assume for this request. The default is AmazonShipping_UK.
}

begin
  result = api_instance.get_unmanifested_shipments(body, opts)
  p result
rescue AmzSpApi::ShippingApiModel::ApiError => e
  puts "Exception when calling ShippingApi->get_unmanifested_shipments: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**GetUnmanifestedShipmentsRequest**](GetUnmanifestedShipmentsRequest.md)| GetUmanifestedShipmentsRequest body | 
 **x_amzn_shipping_business_id** | **String**| Amazon shipping business to assume for this request. The default is AmazonShipping_UK. | [optional] 

### Return type

[**GetUnmanifestedShipmentsResponse**](GetUnmanifestedShipmentsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **link_carrier_account**
> LinkCarrierAccountResponse link_carrier_account(bodycarrier_id, opts)



This API associates/links the specified carrier account with the merchant.   **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 80 | 100 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values then those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'shipping-api-model'

api_instance = AmzSpApi::ShippingApiModel::ShippingApi.new
body = AmzSpApi::ShippingApiModel::LinkCarrierAccountRequest.new # LinkCarrierAccountRequest | LinkCarrierAccountRequest body
carrier_id = 'carrier_id_example' # String | An identifier for the carrier with which the seller's account is being linked.
opts = { 
  x_amzn_shipping_business_id: 'x_amzn_shipping_business_id_example' # String | Amazon shipping business to assume for this request. The default is AmazonShipping_UK.
}

begin
  result = api_instance.link_carrier_account(bodycarrier_id, opts)
  p result
rescue AmzSpApi::ShippingApiModel::ApiError => e
  puts "Exception when calling ShippingApi->link_carrier_account: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**LinkCarrierAccountRequest**](LinkCarrierAccountRequest.md)| LinkCarrierAccountRequest body | 
 **carrier_id** | **String**| An identifier for the carrier with which the seller&#x27;s account is being linked. | 
 **x_amzn_shipping_business_id** | **String**| Amazon shipping business to assume for this request. The default is AmazonShipping_UK. | [optional] 

### Return type

[**LinkCarrierAccountResponse**](LinkCarrierAccountResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **link_carrier_account_0**
> LinkCarrierAccountResponse link_carrier_account_0(bodycarrier_id, opts)



This API associates/links the specified carrier account with the merchant.   **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 5 | 10 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values then those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](doc:usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'shipping-api-model'

api_instance = AmzSpApi::ShippingApiModel::ShippingApi.new
body = AmzSpApi::ShippingApiModel::LinkCarrierAccountRequest.new # LinkCarrierAccountRequest | LinkCarrierAccountRequest body
carrier_id = 'carrier_id_example' # String | An identifier for the carrier with which the seller's account is being linked.
opts = { 
  x_amzn_shipping_business_id: 'x_amzn_shipping_business_id_example' # String | Amazon shipping business to assume for this request. The default is AmazonShipping_UK.
}

begin
  result = api_instance.link_carrier_account_0(bodycarrier_id, opts)
  p result
rescue AmzSpApi::ShippingApiModel::ApiError => e
  puts "Exception when calling ShippingApi->link_carrier_account_0: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**LinkCarrierAccountRequest**](LinkCarrierAccountRequest.md)| LinkCarrierAccountRequest body | 
 **carrier_id** | **String**| An identifier for the carrier with which the seller&#x27;s account is being linked. | 
 **x_amzn_shipping_business_id** | **String**| Amazon shipping business to assume for this request. The default is AmazonShipping_UK. | [optional] 

### Return type

[**LinkCarrierAccountResponse**](LinkCarrierAccountResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **one_click_shipment**
> OneClickShipmentResponse one_click_shipment(body, opts)



Purchases a shipping service identifier and returns purchase-related details and documents.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 80 | 100 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values then those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'shipping-api-model'

api_instance = AmzSpApi::ShippingApiModel::ShippingApi.new
body = AmzSpApi::ShippingApiModel::OneClickShipmentRequest.new # OneClickShipmentRequest | OneClickShipmentRequest body
opts = { 
  x_amzn_shipping_business_id: 'x_amzn_shipping_business_id_example' # String | Amazon shipping business to assume for this request. The default is AmazonShipping_UK.
}

begin
  result = api_instance.one_click_shipment(body, opts)
  p result
rescue AmzSpApi::ShippingApiModel::ApiError => e
  puts "Exception when calling ShippingApi->one_click_shipment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**OneClickShipmentRequest**](OneClickShipmentRequest.md)| OneClickShipmentRequest body | 
 **x_amzn_shipping_business_id** | **String**| Amazon shipping business to assume for this request. The default is AmazonShipping_UK. | [optional] 

### Return type

[**OneClickShipmentResponse**](OneClickShipmentResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **purchase_shipment**
> PurchaseShipmentResponse purchase_shipment(body, opts)



Purchases a shipping service and returns purchase related details and documents.  Note: You must complete the purchase within 10 minutes of rate creation by the shipping service provider. If you make the request after the 10 minutes have expired, you will receive an error response with the error code equal to \"TOKEN_EXPIRED\". If you receive this error response, you must get the rates for the shipment again.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 80 | 100 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values then those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'shipping-api-model'

api_instance = AmzSpApi::ShippingApiModel::ShippingApi.new
body = AmzSpApi::ShippingApiModel::PurchaseShipmentRequest.new # PurchaseShipmentRequest | PurchaseShipmentRequest body
opts = { 
  x_amzn_idempotency_key: 'x_amzn_idempotency_key_example' # String | A unique value which the server uses to recognize subsequent retries of the same request.
  x_amzn_shipping_business_id: 'x_amzn_shipping_business_id_example' # String | Amazon shipping business to assume for this request. The default is AmazonShipping_UK.
}

begin
  result = api_instance.purchase_shipment(body, opts)
  p result
rescue AmzSpApi::ShippingApiModel::ApiError => e
  puts "Exception when calling ShippingApi->purchase_shipment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**PurchaseShipmentRequest**](PurchaseShipmentRequest.md)| PurchaseShipmentRequest body | 
 **x_amzn_idempotency_key** | **String**| A unique value which the server uses to recognize subsequent retries of the same request. | [optional] 
 **x_amzn_shipping_business_id** | **String**| Amazon shipping business to assume for this request. The default is AmazonShipping_UK. | [optional] 

### Return type

[**PurchaseShipmentResponse**](PurchaseShipmentResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **submit_ndr_feedback**
> submit_ndr_feedback(body, opts)



This API submits the NDR (Non-delivery Report) Feedback for any eligible shipment.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 80 | 100 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values then those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](doc:usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'shipping-api-model'

api_instance = AmzSpApi::ShippingApiModel::ShippingApi.new
body = AmzSpApi::ShippingApiModel::SubmitNdrFeedbackRequest.new # SubmitNdrFeedbackRequest | Request body for ndrFeedback operation
opts = { 
  x_amzn_shipping_business_id: 'x_amzn_shipping_business_id_example' # String | Amazon shipping business to assume for this request. The default is AmazonShipping_UK.
}

begin
  api_instance.submit_ndr_feedback(body, opts)
rescue AmzSpApi::ShippingApiModel::ApiError => e
  puts "Exception when calling ShippingApi->submit_ndr_feedback: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SubmitNdrFeedbackRequest**](SubmitNdrFeedbackRequest.md)| Request body for ndrFeedback operation | 
 **x_amzn_shipping_business_id** | **String**| Amazon shipping business to assume for this request. The default is AmazonShipping_UK. | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **unlink_carrier_account**
> UnlinkCarrierAccountResponse unlink_carrier_account(bodycarrier_id, opts)



This API Unlink the specified carrier account with the merchant.   **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 80 | 100 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values then those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'shipping-api-model'

api_instance = AmzSpApi::ShippingApiModel::ShippingApi.new
body = AmzSpApi::ShippingApiModel::UnlinkCarrierAccountRequest.new # UnlinkCarrierAccountRequest | UnlinkCarrierAccountRequest body
carrier_id = 'carrier_id_example' # String | carrier Id to unlink with merchant.
opts = { 
  x_amzn_shipping_business_id: 'x_amzn_shipping_business_id_example' # String | Amazon shipping business to assume for this request. The default is AmazonShipping_UK.
}

begin
  result = api_instance.unlink_carrier_account(bodycarrier_id, opts)
  p result
rescue AmzSpApi::ShippingApiModel::ApiError => e
  puts "Exception when calling ShippingApi->unlink_carrier_account: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**UnlinkCarrierAccountRequest**](UnlinkCarrierAccountRequest.md)| UnlinkCarrierAccountRequest body | 
 **carrier_id** | **String**| carrier Id to unlink with merchant. | 
 **x_amzn_shipping_business_id** | **String**| Amazon shipping business to assume for this request. The default is AmazonShipping_UK. | [optional] 

### Return type

[**UnlinkCarrierAccountResponse**](UnlinkCarrierAccountResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



