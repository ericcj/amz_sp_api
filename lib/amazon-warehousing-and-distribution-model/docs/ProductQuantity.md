# AmzSpApi::AmazonWarehousingAndDistributionModel::ProductQuantity

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**attributes** | [**Array&lt;ProductAttribute&gt;**](ProductAttribute.md) | Contains attributes for this instance of the product. For example, item color, or other attributes that distinguish the product beyond the SKU. This is metadata for the product and Amazon does not process this data. | [optional] 
**quantity** | **Integer** | Product quantity. | 
**sku** | **String** | The seller or merchant SKU. | 
**expiration** | **DateTime** | The expiration date for the SKU. Values are in [ISO 8601](https://developer-docs.amazon.com/sp-api/docs/iso-8601) date-time format. | [optional] 
**prep_details** | [**PrepDetails**](PrepDetails.md) |  | [optional] 

