# AmzSpApi::AuthorizationApiModel::AuthorizationApi

All URIs are relative to *https://sellingpartnerapi-na.amazon.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_authorization_code**](AuthorizationApi.md#get_authorization_code) | **GET** /authorization/v1/authorizationCode | Returns the Login with Amazon (LWA) authorization code for an existing Amazon MWS authorization.

# **get_authorization_code**
> GetAuthorizationCodeResponse get_authorization_code(selling_partner_id, developer_id, mws_auth_token)

Returns the Login with Amazon (LWA) authorization code for an existing Amazon MWS authorization.

With the getAuthorizationCode operation, you can request a Login With Amazon (LWA) authorization code that will allow you to call a Selling Partner API on behalf of a seller who has already authorized you to call Amazon Marketplace Web Service (Amazon MWS). You specify a developer ID, an MWS auth token, and a seller ID. Taken together, these represent the Amazon MWS authorization that the seller previously granted you. The operation returns an LWA authorization code that can be exchanged for a refresh token and access token representing authorization to call the Selling Partner API on the seller's behalf. By using this API, sellers who have already authorized you for Amazon MWS do not need to re-authorize you for the Selling Partner API.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 1 | 5 |  For more information, see \"Usage Plans and Rate Limits\" in the Selling Partner API documentation.

### Example
```ruby
# load the gem
require 'authorization-api-model'

api_instance = AmzSpApi::AuthorizationApiModel::AuthorizationApi.new
selling_partner_id = 'selling_partner_id_example' # String | The seller ID of the seller for whom you are requesting Selling Partner API authorization. This must be the seller ID of the seller who authorized your application on the Marketplace Appstore.
developer_id = 'developer_id_example' # String | Your developer ID. This must be one of the developer ID values that you provided when you registered your application in Developer Central.
mws_auth_token = 'mws_auth_token_example' # String | The MWS Auth Token that was generated when the seller authorized your application on the Marketplace Appstore.


begin
  #Returns the Login with Amazon (LWA) authorization code for an existing Amazon MWS authorization.
  result = api_instance.get_authorization_code(selling_partner_id, developer_id, mws_auth_token)
  p result
rescue AmzSpApi::AuthorizationApiModel::ApiError => e
  puts "Exception when calling AuthorizationApi->get_authorization_code: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **selling_partner_id** | **String**| The seller ID of the seller for whom you are requesting Selling Partner API authorization. This must be the seller ID of the seller who authorized your application on the Marketplace Appstore. | 
 **developer_id** | **String**| Your developer ID. This must be one of the developer ID values that you provided when you registered your application in Developer Central. | 
 **mws_auth_token** | **String**| The MWS Auth Token that was generated when the seller authorized your application on the Marketplace Appstore. | 

### Return type

[**GetAuthorizationCodeResponse**](GetAuthorizationCodeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, payload, errors



