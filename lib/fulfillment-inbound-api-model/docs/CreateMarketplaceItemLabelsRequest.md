# AmzSpApi::FulfillmentInboundApiModel::CreateMarketplaceItemLabelsRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**height** | [**BigDecimal**](BigDecimal.md) | The height of the item label. | [optional] 
**label_type** | [**LabelPrintType**](LabelPrintType.md) |  | 
**locale_code** | **String** | The locale code constructed from ISO 639 language code and ISO 3166-1 alpha-2 standard of country codes separated by an underscore character. | [optional] [default to &#x27;en_US&#x27;]
**marketplace_id** | **String** | The Marketplace ID. For a list of possible values, refer to [Marketplace IDs](https://developer-docs.amazon.com/sp-api/docs/marketplace-ids). | 
**msku_quantities** | [**Array&lt;MskuQuantity&gt;**](MskuQuantity.md) | Represents the quantity of an MSKU to print item labels for. | 
**page_type** | [**ItemLabelPageType**](ItemLabelPageType.md) |  | [optional] 
**width** | [**BigDecimal**](BigDecimal.md) | The width of the item label. | [optional] 

