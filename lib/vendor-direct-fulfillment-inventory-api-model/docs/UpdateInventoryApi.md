# AmzSpApi::VendorDirectFulfillmentInventoryApiModel::UpdateInventoryApi

All URIs are relative to *https://sellingpartnerapi-na.amazon.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**submit_inventory_update**](UpdateInventoryApi.md#submit_inventory_update) | **POST** /vendor/directFulfillment/inventory/v1/warehouses/{warehouseId}/items | 

# **submit_inventory_update**
> SubmitInventoryUpdateResponse submit_inventory_update(bodywarehouse_id)



Submits inventory updates for the specified warehouse for either a partial or full feed of inventory items.  **Usage Plans:**  | Plan type | Rate (requests per second) | Burst | | ---- | ---- | ---- | |Default| 10 | 10 | |Selling partner specific| Variable | Variable |  The x-amzn-RateLimit-Limit response header returns the usage plan rate limits that were applied to the requested operation. Rate limits for some selling partners will vary from the default rate and burst shown in the table above. For more information, see \"Usage Plans and Rate Limits\" in the Selling Partner API documentation.

### Example
```ruby
# load the gem
require 'vendor-direct-fulfillment-inventory-api-model'

api_instance = AmzSpApi::VendorDirectFulfillmentInventoryApiModel::UpdateInventoryApi.new
body = AmzSpApi::VendorDirectFulfillmentInventoryApiModel::SubmitInventoryUpdateRequest.new # SubmitInventoryUpdateRequest | 
warehouse_id = 'warehouse_id_example' # String | Identifier for the warehouse for which to update inventory.


begin
  result = api_instance.submit_inventory_update(bodywarehouse_id)
  p result
rescue AmzSpApi::VendorDirectFulfillmentInventoryApiModel::ApiError => e
  puts "Exception when calling UpdateInventoryApi->submit_inventory_update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SubmitInventoryUpdateRequest**](SubmitInventoryUpdateRequest.md)|  | 
 **warehouse_id** | **String**| Identifier for the warehouse for which to update inventory. | 

### Return type

[**SubmitInventoryUpdateResponse**](SubmitInventoryUpdateResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



