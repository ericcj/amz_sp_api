# AmzSpApi::AmazonWarehousingAndDistributionModel::InboundEligibility

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ineligibility_reasons** | [**Array&lt;OrderIneligibilityReason&gt;**](OrderIneligibilityReason.md) | If there are order level eligibility issues, then this list will contain those error codes and descriptions. | [optional] 
**packages_to_inbound** | [**Array&lt;SkuEligibility&gt;**](SkuEligibility.md) | Details on SKU eligibility for each inbound package. | 
**previewed_at** | **DateTime** | Timestamp when the eligibility check is performed. | 
**status** | [**InboundEligibilityStatus**](InboundEligibilityStatus.md) |  | 

