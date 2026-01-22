# AmzSpApi::VendorDirectFulfillmentInventoryApiModel::UpdateInventoryApi

All URIs are relative to *https://sellingpartnerapi-na.amazon.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**submit_inventory_update**](UpdateInventoryApi.md#submit_inventory_update) | **POST** /vendor/directFulfillment/inventory/v1/warehouses/{warehouseId}/items | 

# **submit_inventory_update**
> SubmitInventoryUpdateResponse submit_inventory_update(bodywarehouse_id)



Submits inventory updates for the specified warehouse for either a partial or full feed of inventory items.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 10 | 10 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values than those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'vendor-direct-fulfillment-inventory-api-model'

api_instance = AmzSpApi::VendorDirectFulfillmentInventoryApiModel::UpdateInventoryApi.new
body = AmzSpApi::VendorDirectFulfillmentInventoryApiModel::SubmitInventoryUpdateRequest.new # SubmitInventoryUpdateRequest | The request body containing the inventory update data to submit.
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
 **body** | [**SubmitInventoryUpdateRequest**](SubmitInventoryUpdateRequest.md)| The request body containing the inventory update data to submit. | 
 **warehouse_id** | **String**| Identifier for the warehouse for which to update inventory. | 

### Return type

[**SubmitInventoryUpdateResponse**](SubmitInventoryUpdateResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



