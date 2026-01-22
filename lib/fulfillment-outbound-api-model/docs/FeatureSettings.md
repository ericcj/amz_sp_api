# AmzSpApi::FulfillmentOutboundApiModel::FeatureSettings

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**feature_name** | **String** | The name of the feature. Valid feature names are:  - &#x60;BLOCK_AMZL&#x60;: Blocks orders from being shipped using Amazon Logistics (AMZL).   - Note: Using this feature will incur additional fee surcharges on MCF orders and may increase the risk of unfulfilled or delayed deliveries if alternative carriers are unavailable. Using &#x60;BLOCK_AMZL&#x60; in an order request will take precedence over your Seller Central account setting. - &#x60;BLANK_BOX&#x60;: Ships orders in non-Amazon branded packaging (blank boxes). - &#x60;SIGNATURE_CONFIRMATION&#x60;: Requires a signature from the recipient upon delivery.    - Note: Using signature confirmation features will incur additional fees on MCF orders and are currently supported only in the US marketplace. | [optional] 
**feature_fulfillment_policy** | **String** | Specifies the policy to use when fulfilling an order. | [optional] 

