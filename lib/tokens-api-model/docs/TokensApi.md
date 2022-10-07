# AmzSpApi::TokensApiModel::TokensApi

All URIs are relative to *https://sellingpartnerapi-na.amazon.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_restricted_data_token**](TokensApi.md#create_restricted_data_token) | **POST** /tokens/2021-03-01/restrictedDataToken | 

# **create_restricted_data_token**
> CreateRestrictedDataTokenResponse create_restricted_data_token(body)



Returns a Restricted Data Token (RDT) for one or more restricted resources that you specify. A restricted resource is the HTTP method and path from a restricted operation that returns Personally Identifiable Information (PII), plus a dataElements value that indicates the type of PII requested. See the Tokens API Use Case Guide for a list of restricted operations. Use the RDT returned here as the access token in subsequent calls to the corresponding restricted operations.  **Usage Plans:**  | Plan type | Rate (requests per second) | Burst | | ---- | ---- | ---- | |Default| 1 | 10 | |Selling partner specific| Variable | Variable |  The x-amzn-RateLimit-Limit response header returns the usage plan rate limits that were applied to the requested operation. Rate limits for some selling partners will vary from the default rate and burst shown in the table above. For more information, see \"Usage Plans and Rate Limits\" in the Selling Partner API documentation.

### Example
```ruby
# load the gem
require 'tokens-api-model'

api_instance = AmzSpApi::TokensApiModel::TokensApi.new
body = AmzSpApi::TokensApiModel::CreateRestrictedDataTokenRequest.new # CreateRestrictedDataTokenRequest | The restricted data token request details.


begin
  result = api_instance.create_restricted_data_token(body)
  p result
rescue AmzSpApi::TokensApiModel::ApiError => e
  puts "Exception when calling TokensApi->create_restricted_data_token: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateRestrictedDataTokenRequest**](CreateRestrictedDataTokenRequest.md)| The restricted data token request details. | 

### Return type

[**CreateRestrictedDataTokenResponse**](CreateRestrictedDataTokenResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



