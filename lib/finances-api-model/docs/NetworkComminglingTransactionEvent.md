# AmzSpApi::FinancesApiModel::NetworkComminglingTransactionEvent

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**transaction_type** | **String** | The type of network item swap.  Possible values:  * NetCo - A Fulfillment by Amazon inventory pooling transaction. Available only in the India marketplace.  * ComminglingVAT - A commingling VAT transaction. Available only in the UK, Spain, France, Germany, and Italy marketplaces. | [optional] 
**posted_date** | **Date** |  | [optional] 
**net_co_transaction_id** | **String** | The identifier for the network item swap. | [optional] 
**swap_reason** | **String** | The reason for the network item swap. | [optional] 
**asin** | **String** | The Amazon Standard Identification Number (ASIN) of the swapped item. | [optional] 
**marketplace_id** | **String** | The marketplace in which the event took place. | [optional] 
**tax_exclusive_amount** | [**Currency**](Currency.md) |  | [optional] 
**tax_amount** | [**Currency**](Currency.md) |  | [optional] 

