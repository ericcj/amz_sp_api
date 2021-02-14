# AmzSpApi::FinancesApiModel::ProductAdsPaymentEvent

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**posted_date** | **Date** |  | [optional] 
**transaction_type** | **String** | Indicates if the transaction is for a charge or a refund.  Possible values:  * charge - Charge  * refund - Refund | [optional] 
**invoice_id** | **String** | Identifier for the invoice that the transaction appears in. | [optional] 
**base_value** | [**Currency**](Currency.md) |  | [optional] 
**tax_value** | [**Currency**](Currency.md) |  | [optional] 
**transaction_value** | [**Currency**](Currency.md) |  | [optional] 

