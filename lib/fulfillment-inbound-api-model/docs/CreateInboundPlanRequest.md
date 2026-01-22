# AmzSpApi::FulfillmentInboundApiModel::CreateInboundPlanRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**destination_marketplaces** | **Array&lt;String&gt;** | Marketplaces where the items need to be shipped to. Currently only one marketplace can be selected in this request. | 
**items** | [**Array&lt;ItemInput&gt;**](ItemInput.md) | Items included in this plan. | 
**name** | **String** | Name for the Inbound Plan. If one isn&#x27;t provided, a default name will be provided. | [optional] 
**source_address** | [**AddressInput**](AddressInput.md) |  | 

