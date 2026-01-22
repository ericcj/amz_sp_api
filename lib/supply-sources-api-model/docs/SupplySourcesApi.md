# AmzSpApi::SupplySourcesApiModel::SupplySourcesApi

All URIs are relative to *https://sellingpartnerapi-na.amazon.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**archive_supply_source**](SupplySourcesApi.md#archive_supply_source) | **DELETE** /supplySources/2020-07-01/supplySources/{supplySourceId} | 
[**create_supply_source**](SupplySourcesApi.md#create_supply_source) | **POST** /supplySources/2020-07-01/supplySources | 
[**get_supply_source**](SupplySourcesApi.md#get_supply_source) | **GET** /supplySources/2020-07-01/supplySources/{supplySourceId} | 
[**get_supply_sources**](SupplySourcesApi.md#get_supply_sources) | **GET** /supplySources/2020-07-01/supplySources | 
[**update_supply_source**](SupplySourcesApi.md#update_supply_source) | **PUT** /supplySources/2020-07-01/supplySources/{supplySourceId} | 
[**update_supply_source_status**](SupplySourcesApi.md#update_supply_source_status) | **PUT** /supplySources/2020-07-01/supplySources/{supplySourceId}/status | 

# **archive_supply_source**
> ErrorList archive_supply_source(supply_source_id)



Archive a supply source, making it inactive. Cannot be undone.

### Example
```ruby
# load the gem
require 'supply-sources-api-model'

api_instance = AmzSpApi::SupplySourcesApiModel::SupplySourcesApi.new
supply_source_id = 'supply_source_id_example' # String | The unique identifier of a supply source.


begin
  result = api_instance.archive_supply_source(supply_source_id)
  p result
rescue AmzSpApi::SupplySourcesApiModel::ApiError => e
  puts "Exception when calling SupplySourcesApi->archive_supply_source: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **supply_source_id** | **String**| The unique identifier of a supply source. | 

### Return type

[**ErrorList**](ErrorList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **create_supply_source**
> CreateSupplySourceResponse create_supply_source(body)



Create a new supply source.

### Example
```ruby
# load the gem
require 'supply-sources-api-model'

api_instance = AmzSpApi::SupplySourcesApiModel::SupplySourcesApi.new
body = AmzSpApi::SupplySourcesApiModel::CreateSupplySourceRequest.new # CreateSupplySourceRequest | A request to create a supply source.


begin
  result = api_instance.create_supply_source(body)
  p result
rescue AmzSpApi::SupplySourcesApiModel::ApiError => e
  puts "Exception when calling SupplySourcesApi->create_supply_source: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateSupplySourceRequest**](CreateSupplySourceRequest.md)| A request to create a supply source. | 

### Return type

[**CreateSupplySourceResponse**](CreateSupplySourceResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_supply_source**
> SupplySource get_supply_source(supply_source_id)



Retrieve a supply source.

### Example
```ruby
# load the gem
require 'supply-sources-api-model'

api_instance = AmzSpApi::SupplySourcesApiModel::SupplySourcesApi.new
supply_source_id = 'supply_source_id_example' # String | The unique identifier of a supply source.


begin
  result = api_instance.get_supply_source(supply_source_id)
  p result
rescue AmzSpApi::SupplySourcesApiModel::ApiError => e
  puts "Exception when calling SupplySourcesApi->get_supply_source: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **supply_source_id** | **String**| The unique identifier of a supply source. | 

### Return type

[**SupplySource**](SupplySource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_supply_sources**
> GetSupplySourcesResponse get_supply_sources(opts)



The path to retrieve paginated supply sources.

### Example
```ruby
# load the gem
require 'supply-sources-api-model'

api_instance = AmzSpApi::SupplySourcesApiModel::SupplySourcesApi.new
opts = { 
  next_page_token: 'next_page_token_example', # String | The pagination token to retrieve a specific page of results.
  page_size: AmzSpApi::SupplySourcesApiModel::BigDecimal.new # BigDecimal | The number of supply sources to return per paginated request.
}

begin
  result = api_instance.get_supply_sources(opts)
  p result
rescue AmzSpApi::SupplySourcesApiModel::ApiError => e
  puts "Exception when calling SupplySourcesApi->get_supply_sources: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **next_page_token** | **String**| The pagination token to retrieve a specific page of results. | [optional] 
 **page_size** | **BigDecimal**| The number of supply sources to return per paginated request. | [optional] [default to 10.0]

### Return type

[**GetSupplySourcesResponse**](GetSupplySourcesResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_supply_source**
> ErrorList update_supply_source(supply_source_id, opts)



Update the configuration and capabilities of a supply source.

### Example
```ruby
# load the gem
require 'supply-sources-api-model'

api_instance = AmzSpApi::SupplySourcesApiModel::SupplySourcesApi.new
supply_source_id = 'supply_source_id_example' # String | The unique identitier of a supply source.
opts = { 
  body: AmzSpApi::SupplySourcesApiModel::UpdateSupplySourceRequest.new # UpdateSupplySourceRequest | 
}

begin
  result = api_instance.update_supply_source(supply_source_id, opts)
  p result
rescue AmzSpApi::SupplySourcesApiModel::ApiError => e
  puts "Exception when calling SupplySourcesApi->update_supply_source: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **supply_source_id** | **String**| The unique identitier of a supply source. | 
 **body** | [**UpdateSupplySourceRequest**](UpdateSupplySourceRequest.md)|  | [optional] 

### Return type

[**ErrorList**](ErrorList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_supply_source_status**
> ErrorList update_supply_source_status(supply_source_id, opts)



Update the status of a supply source.

### Example
```ruby
# load the gem
require 'supply-sources-api-model'

api_instance = AmzSpApi::SupplySourcesApiModel::SupplySourcesApi.new
supply_source_id = 'supply_source_id_example' # String | The unique identifier of a supply source.
opts = { 
  body: AmzSpApi::SupplySourcesApiModel::UpdateSupplySourceStatusRequest.new # UpdateSupplySourceStatusRequest | 
}

begin
  result = api_instance.update_supply_source_status(supply_source_id, opts)
  p result
rescue AmzSpApi::SupplySourcesApiModel::ApiError => e
  puts "Exception when calling SupplySourcesApi->update_supply_source_status: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **supply_source_id** | **String**| The unique identifier of a supply source. | 
 **body** | [**UpdateSupplySourceStatusRequest**](UpdateSupplySourceStatusRequest.md)|  | [optional] 

### Return type

[**ErrorList**](ErrorList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



