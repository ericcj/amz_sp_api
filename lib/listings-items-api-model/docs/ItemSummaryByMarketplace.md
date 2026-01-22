# AmzSpApi::ListingsItemsApiModel::ItemSummaryByMarketplace

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**marketplace_id** | **String** | A marketplace identifier. Identifies the Amazon marketplace for the listings item. | 
**asin** | **String** | Amazon Standard Identification Number (ASIN) of the listings item. | [optional] 
**product_type** | **String** | The Amazon product type of the listings item. | 
**condition_type** | **String** | Identifies the condition of the listings item. | [optional] 
**status** | **Array&lt;String&gt;** | Statuses that apply to the listings item. | 
**fn_sku** | **String** | The fulfillment network stock keeping unit is an identifier used by Amazon fulfillment centers to identify each unique item. | [optional] 
**item_name** | **String** | The name or title associated with an Amazon catalog item. | [optional] 
**created_date** | **DateTime** | The date the listings item was created in ISO 8601 format. | 
**last_updated_date** | **DateTime** | The date the listings item was last updated in ISO 8601 format. | 
**main_image** | [**ItemImage**](ItemImage.md) |  | [optional] 

