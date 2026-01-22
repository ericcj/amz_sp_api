# AmzSpApi::VehiclesApiModel::AutomotiveApi

All URIs are relative to *https://sellingpartnerapi-na.amazon.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_vehicles**](AutomotiveApi.md#get_vehicles) | **GET** /catalog/2024-11-01/automotive/vehicles | 

# **get_vehicles**
> VehiclesResponse get_vehicles(marketplace_id, vehicle_type, opts)



Get the latest collection of vehicles

### Example
```ruby
# load the gem
require 'vehicles-api-model'

api_instance = AmzSpApi::VehiclesApiModel::AutomotiveApi.new
marketplace_id = 'marketplace_id_example' # String | An identifier for the marketplace in which the resource operates.
vehicle_type = 'vehicle_type_example' # String | An identifier for vehicle type.
opts = { 
  page_token: 'page_token_example', # String | A token to fetch a certain page when there are multiple pages worth of results.
  updated_after: 'updated_after_example' # String | Date in ISO 8601 format, if provided only vehicles which are modified/added to Amazon's catalog after this date will be returned.
}

begin
  result = api_instance.get_vehicles(marketplace_id, vehicle_type, opts)
  p result
rescue AmzSpApi::VehiclesApiModel::ApiError => e
  puts "Exception when calling AutomotiveApi->get_vehicles: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **marketplace_id** | **String**| An identifier for the marketplace in which the resource operates. | 
 **vehicle_type** | **String**| An identifier for vehicle type. | 
 **page_token** | **String**| A token to fetch a certain page when there are multiple pages worth of results. | [optional] 
 **updated_after** | **String**| Date in ISO 8601 format, if provided only vehicles which are modified/added to Amazon&#x27;s catalog after this date will be returned. | [optional] 

### Return type

[**VehiclesResponse**](VehiclesResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



