# AmzSpApi::FinancesApiModel::AdjustmentItem

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**quantity** | **String** | Represents the number of units in the seller&#x27;s inventory when the AdustmentType is FBAInventoryReimbursement. | [optional] 
**per_unit_amount** | [**Currency**](Currency.md) |  | [optional] 
**total_amount** | [**Currency**](Currency.md) |  | [optional] 
**seller_sku** | **String** | The seller SKU of the item. The seller SKU is qualified by the seller&#x27;s seller ID, which is included with every call to the Selling Partner API. | [optional] 
**fn_sku** | **String** | A unique identifier assigned to products stored in and fulfilled from a fulfillment center. | [optional] 
**product_description** | **String** | A short description of the item. | [optional] 
**asin** | **String** | The Amazon Standard Identification Number (ASIN) of the item. | [optional] 

