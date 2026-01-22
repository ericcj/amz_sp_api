# AmzSpApi::ReplenishmentApiModel::ListOffersRequestFilters

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**marketplace_id** | [**MarketplaceId**](MarketplaceId.md) |  | 
**skus** | **Array&lt;String&gt;** | A list of SKUs to filter. This filter is only supported for sellers and not for vendors. | [optional] 
**asins** | **Array&lt;String&gt;** | A list of Amazon Standard Identification Numbers (ASINs). | [optional] 
**eligibilities** | [**Array&lt;EligibilityStatus&gt;**](EligibilityStatus.md) | A list of eligibilities associated with an offer. | [optional] 
**preferences** | [**Preference**](Preference.md) |  | [optional] 
**promotions** | [**Promotion**](Promotion.md) |  | [optional] 
**program_types** | [**ProgramTypes**](ProgramTypes.md) |  | 

