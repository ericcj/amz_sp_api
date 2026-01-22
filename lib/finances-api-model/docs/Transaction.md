# AmzSpApi::FinancesApiModel::Transaction

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**selling_partner_metadata** | [**SellingPartnerMetadata**](SellingPartnerMetadata.md) |  | [optional] 
**related_identifiers** | [**RelatedIdentifiers**](RelatedIdentifiers.md) |  | [optional] 
**transaction_type** | **String** | The type of transaction.  **Possible value:** &#x60;Shipment&#x60; | [optional] 
**transaction_id** | **String** | The unique identifier of the transaction. | [optional] 
**transaction_status** | **String** | The status of the transaction.  **Possible values:**  * &#x60;DEFERRED&#x60;: the transaction is currently deferred. * &#x60;RELEASED&#x60;: the transaction is currently released. * &#x60;DEFERRED_RELEASED&#x60;: the transaction was deferred in the past, but is now released. The status of a deferred transaction is updated to &#x60;DEFERRED_RELEASED&#x60; when the transaction is released. | [optional] 
**description** | **String** | Describes the reasons for the transaction.  **Example:** &#x27;Order Payment&#x27;, &#x27;Refund Order&#x27; | [optional] 
**posted_date** | **Date** |  | [optional] 
**total_amount** | [**Currency**](Currency.md) |  | [optional] 
**marketplace_details** | [**MarketplaceDetails**](MarketplaceDetails.md) |  | [optional] 
**items** | [**Items**](Items.md) |  | [optional] 
**contexts** | [**Contexts**](Contexts.md) |  | [optional] 
**breakdowns** | [**Array&lt;Breakdown&gt;**](Breakdown.md) | A list of breakdowns that detail how the total amount is calculated for the transaction. | [optional] 

