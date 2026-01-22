# AmzSpApi::FulfillmentInboundApiModel::InboundPlanSummary

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**created_at** | **DateTime** | The time at which the inbound plan was created. In [ISO 8601](https://developer-docs.amazon.com/sp-api/docs/iso-8601) datetime format with pattern &#x60;yyyy-MM-ddTHH:mm:ssZ&#x60;. | 
**inbound_plan_id** | **String** | Identifier of an inbound plan. | 
**last_updated_at** | **DateTime** | The time at which the inbound plan was last updated. In [ISO 8601](https://developer-docs.amazon.com/sp-api/docs/iso-8601) datetime format with pattern &#x60;yyyy-MM-ddTHH:mm:ssZ&#x60;. | 
**marketplace_ids** | **Array&lt;String&gt;** | A list of marketplace IDs. | 
**name** | **String** | Human-readable name of the inbound plan. | 
**source_address** | [**Address**](Address.md) |  | 
**status** | **String** | The current status of the inbound plan. Possible values: &#x60;ACTIVE&#x60;, &#x60;VOIDED&#x60;, &#x60;SHIPPED&#x60;, &#x60;ERRORED&#x60;. | 

