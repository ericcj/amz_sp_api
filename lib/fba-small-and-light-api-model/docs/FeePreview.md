# AmzSpApi::FbaSmallAndLightApiModel::FeePreview

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**asin** | **String** | The Amazon Standard Identification Number (ASIN) value used to identify the item. | [optional] 
**price** | [**MoneyType**](MoneyType.md) |  | [optional] 
**fee_breakdown** | [**Array&lt;FeeLineItem&gt;**](FeeLineItem.md) | A list of the Small and Light fees for the item. | [optional] 
**total_fees** | [**MoneyType**](MoneyType.md) |  | [optional] 
**errors** | [**Array&lt;Error&gt;**](Error.md) | One or more unexpected errors occurred during the getSmallAndLightFeePreview operation. | [optional] 

