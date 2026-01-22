# AmzSpApi::FulfillmentInboundApiModel::PackingOption

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**discounts** | [**Array&lt;Incentive&gt;**](Incentive.md) | Discount for the offered option. | 
**expiration** | **DateTime** | The time at which this packing option is no longer valid. In [ISO 8601](https://developer-docs.amazon.com/sp-api/docs/iso-8601) datetime format with pattern &#x60;yyyy-MM-ddTHH:mm:ss.sssZ&#x60;. | [optional] 
**fees** | [**Array&lt;Incentive&gt;**](Incentive.md) | Fee for the offered option. | 
**packing_groups** | **Array&lt;String&gt;** | Packing group IDs. | 
**packing_option_id** | **String** | Identifier of a packing option. | 
**status** | **String** | The status of the packing option. Possible values: &#x60;OFFERED&#x60;, &#x60;ACCEPTED&#x60;, &#x60;EXPIRED&#x60;. | 
**supported_configurations** | [**Array&lt;PackingConfiguration&gt;**](PackingConfiguration.md) | A list of possible configurations for this option. | 
**supported_shipping_configurations** | [**Array&lt;ShippingConfiguration&gt;**](ShippingConfiguration.md) | **This field is deprecated**. Use the &#x60;shippingRequirements&#x60; property under &#x60;supportedConfigurations&#x60; instead. List of supported shipping modes. | 

