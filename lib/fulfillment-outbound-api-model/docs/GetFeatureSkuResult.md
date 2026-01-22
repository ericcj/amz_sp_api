# AmzSpApi::FulfillmentOutboundApiModel::GetFeatureSkuResult

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**marketplace_id** | **String** | The requested marketplace. | 
**feature_name** | **String** | The name of the feature. | 
**is_eligible** | **BOOLEAN** | When true, the seller SKU is eligible for the requested feature. | 
**ineligible_reasons** | **Array&lt;String&gt;** | A list of one or more reasons that the seller SKU is ineligible for the feature.  Possible values: * &#x60;MERCHANT_NOT_ENROLLED&#x60;: The merchant isn&#x27;t enrolled for the feature. * &#x60;SKU_NOT_ELIGIBLE&#x60;: The SKU doesn&#x27;t reside in a warehouse that supports the feature. * &#x60;INVALID_SKU&#x60;: There is an issue with the SKU provided. | [optional] 
**sku_info** | [**FeatureSku**](FeatureSku.md) |  | [optional] 

