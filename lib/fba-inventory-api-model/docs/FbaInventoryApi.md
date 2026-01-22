# AmzSpApi::FbaInventoryApiModel::FbaInventoryApi

All URIs are relative to *https://sellingpartnerapi-na.amazon.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_inventory**](FbaInventoryApi.md#add_inventory) | **POST** /fba/inventory/v1/items/inventory | 
[**create_inventory_item**](FbaInventoryApi.md#create_inventory_item) | **POST** /fba/inventory/v1/items | 
[**delete_inventory_item**](FbaInventoryApi.md#delete_inventory_item) | **DELETE** /fba/inventory/v1/items/{sellerSku} | 
[**get_inventory_summaries**](FbaInventoryApi.md#get_inventory_summaries) | **GET** /fba/inventory/v1/summaries | 

# **add_inventory**
> AddInventoryResponse add_inventory(bodyx_amzn_idempotency_token)



Requests that Amazon add items to the Sandbox Inventory with desired amount of quantity in the sandbox environment. This is a sandbox-only operation and must be directed to a sandbox endpoint. Refer to [Selling Partner API sandbox](https://developer-docs.amazon.com/sp-api/docs/the-selling-partner-api-sandbox) for more information.

### Example
```ruby
# load the gem
require 'fba-inventory-api-model'

api_instance = AmzSpApi::FbaInventoryApiModel::FbaInventoryApi.new
body = AmzSpApi::FbaInventoryApiModel::AddInventoryRequest.new # AddInventoryRequest | List of items to add to Sandbox inventory.
x_amzn_idempotency_token = 'x_amzn_idempotency_token_example' # String | A unique token/requestId provided with each call to ensure idempotency.


begin
  result = api_instance.add_inventory(bodyx_amzn_idempotency_token)
  p result
rescue AmzSpApi::FbaInventoryApiModel::ApiError => e
  puts "Exception when calling FbaInventoryApi->add_inventory: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**AddInventoryRequest**](AddInventoryRequest.md)| List of items to add to Sandbox inventory. | 
 **x_amzn_idempotency_token** | **String**| A unique token/requestId provided with each call to ensure idempotency. | 

### Return type

[**AddInventoryResponse**](AddInventoryResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_inventory_item**
> CreateInventoryItemResponse create_inventory_item(body)



Requests that Amazon create product-details in the Sandbox Inventory in the sandbox environment. This is a sandbox-only operation and must be directed to a sandbox endpoint. Refer to [Selling Partner API sandbox](https://developer-docs.amazon.com/sp-api/docs/the-selling-partner-api-sandbox) for more information.

### Example
```ruby
# load the gem
require 'fba-inventory-api-model'

api_instance = AmzSpApi::FbaInventoryApiModel::FbaInventoryApi.new
body = AmzSpApi::FbaInventoryApiModel::CreateInventoryItemRequest.new # CreateInventoryItemRequest | CreateInventoryItem Request Body Parameter.


begin
  result = api_instance.create_inventory_item(body)
  p result
rescue AmzSpApi::FbaInventoryApiModel::ApiError => e
  puts "Exception when calling FbaInventoryApi->create_inventory_item: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateInventoryItemRequest**](CreateInventoryItemRequest.md)| CreateInventoryItem Request Body Parameter. | 

### Return type

[**CreateInventoryItemResponse**](CreateInventoryItemResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_inventory_item**
> DeleteInventoryItemResponse delete_inventory_item(seller_sku, marketplace_id)



Requests that Amazon Deletes an item from the Sandbox Inventory in the sandbox environment. This is a sandbox-only operation and must be directed to a sandbox endpoint. Refer to [Selling Partner API sandbox](https://developer-docs.amazon.com/sp-api/docs/the-selling-partner-api-sandbox) for more information.

### Example
```ruby
# load the gem
require 'fba-inventory-api-model'

api_instance = AmzSpApi::FbaInventoryApiModel::FbaInventoryApi.new
seller_sku = 'seller_sku_example' # String | A single seller SKU used for querying the specified seller SKU inventory summaries.
marketplace_id = 'marketplace_id_example' # String | The marketplace ID for the marketplace for which the sellerSku is to be deleted.


begin
  result = api_instance.delete_inventory_item(seller_sku, marketplace_id)
  p result
rescue AmzSpApi::FbaInventoryApiModel::ApiError => e
  puts "Exception when calling FbaInventoryApi->delete_inventory_item: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **seller_sku** | **String**| A single seller SKU used for querying the specified seller SKU inventory summaries. | 
 **marketplace_id** | **String**| The marketplace ID for the marketplace for which the sellerSku is to be deleted. | 

### Return type

[**DeleteInventoryItemResponse**](DeleteInventoryItemResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_inventory_summaries**
> GetInventorySummariesResponse get_inventory_summaries(granularity_type, granularity_id, marketplace_ids, opts)



Returns a list of inventory summaries. The summaries returned depend on the presence or absence of the startDateTime, sellerSkus and sellerSku parameters:  - All inventory summaries with available details are returned when the startDateTime, sellerSkus and sellerSku parameters are omitted. - When startDateTime is provided, the operation returns inventory summaries that have had changes after the date and time specified. The sellerSkus and sellerSku parameters are ignored. Important: To avoid errors, use both startDateTime and nextToken to get the next page of inventory summaries that have changed after the date and time specified. - When the sellerSkus parameter is provided, the operation returns inventory summaries for only the specified sellerSkus. The sellerSku parameter is ignored. - When the sellerSku parameter is provided, the operation returns inventory summaries for only the specified sellerSku.  Note: The parameters associated with this operation may contain special characters that must be encoded to successfully call the API. To avoid errors with SKUs when encoding URLs, refer to [URL Encoding](https://developer-docs.amazon.com/sp-api/docs/url-encoding).  Usage Plan:  | Rate (requests per second) | Burst | | ---- | ---- | | 2 | 2 |  The x-amzn-RateLimit-Limit response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values than those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits).

### Example
```ruby
# load the gem
require 'fba-inventory-api-model'

api_instance = AmzSpApi::FbaInventoryApiModel::FbaInventoryApi.new
granularity_type = 'granularity_type_example' # String | The granularity type for the inventory aggregation level.
granularity_id = 'granularity_id_example' # String | The granularity ID for the inventory aggregation level.
marketplace_ids = ['marketplace_ids_example'] # Array<String> | The marketplace ID for the marketplace for which to return inventory summaries.
opts = { 
  details: false, # BOOLEAN | true to return inventory summaries with additional summarized inventory details and quantities. Otherwise, returns inventory summaries only (default value).
  start_date_time: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | A start date and time in ISO8601 format. If specified, all inventory summaries that have changed since then are returned. You must specify a date and time that is no earlier than 18 months prior to the date and time when you call the API. Note: Changes in inboundWorkingQuantity, inboundShippedQuantity and inboundReceivingQuantity are not detected.
  seller_skus: ['seller_skus_example'], # Array<String> | A list of seller SKUs for which to return inventory summaries. You may specify up to 50 SKUs.
  seller_sku: 'seller_sku_example', # String | A single seller SKU used for querying the specified seller SKU inventory summaries.
  next_token: 'next_token_example' # String | String token returned in the response of your previous request. The string token will expire 30 seconds after being created.
}

begin
  result = api_instance.get_inventory_summaries(granularity_type, granularity_id, marketplace_ids, opts)
  p result
rescue AmzSpApi::FbaInventoryApiModel::ApiError => e
  puts "Exception when calling FbaInventoryApi->get_inventory_summaries: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **granularity_type** | **String**| The granularity type for the inventory aggregation level. | 
 **granularity_id** | **String**| The granularity ID for the inventory aggregation level. | 
 **marketplace_ids** | [**Array&lt;String&gt;**](String.md)| The marketplace ID for the marketplace for which to return inventory summaries. | 
 **details** | **BOOLEAN**| true to return inventory summaries with additional summarized inventory details and quantities. Otherwise, returns inventory summaries only (default value). | [optional] [default to false]
 **start_date_time** | **DateTime**| A start date and time in ISO8601 format. If specified, all inventory summaries that have changed since then are returned. You must specify a date and time that is no earlier than 18 months prior to the date and time when you call the API. Note: Changes in inboundWorkingQuantity, inboundShippedQuantity and inboundReceivingQuantity are not detected. | [optional] 
 **seller_skus** | [**Array&lt;String&gt;**](String.md)| A list of seller SKUs for which to return inventory summaries. You may specify up to 50 SKUs. | [optional] 
 **seller_sku** | **String**| A single seller SKU used for querying the specified seller SKU inventory summaries. | [optional] 
 **next_token** | **String**| String token returned in the response of your previous request. The string token will expire 30 seconds after being created. | [optional] 

### Return type

[**GetInventorySummariesResponse**](GetInventorySummariesResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



