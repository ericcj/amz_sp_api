# AmzSpApi::SellerWalletApiModel::Transaction

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**account_id** | **String** | The unique identifier of the Amazon Seller Wallet bank account from which the money is debited. | 
**transaction_id** | **String** | The unique identifier provided by Amazon to the transaction  | 
**transaction_type** | [**TransactionType**](TransactionType.md) |  | 
**transaction_status** | [**TransactionStatus**](TransactionStatus.md) |  | 
**transaction_request_date** | **DateTime** | The date when the transaction was initiated. | 
**expected_completion_date** | **DateTime** | Expected completion date of a transaction, for existing active Payees (Trusted Beneficiaries) it will be 24 hours but for new destination bank accounts the value could go up to 5 days  | [optional] 
**transaction_actual_completion_date** | **DateTime** | Transaction completion date  | [optional] 
**last_update_date** | **DateTime** | The last update date on the transaction  | 
**requester_name** | **String** | Amazon SW customer who requested the transaction  | [optional] 
**transaction_requester_source** | **String** | The transaction initiation source. This value is either the Amazon portal or PISP name that the customer used to start the transaction. | 
**transaction_description** | **String** | A description of the transaction that the requester provides when they initiate the transaction. | 
**transaction_source_account** | [**TransactionAccount**](TransactionAccount.md) |  | [optional] 
**transaction_destination_account** | [**TransactionAccount**](TransactionAccount.md) |  | 
**transaction_request_amount** | [**Currency**](Currency.md) |  | 
**transfer_rate_details** | [**TransferRatePreview**](TransferRatePreview.md) |  | 
**transaction_final_amount** | [**Currency**](Currency.md) |  | [optional] 
**transaction_failure_reason** | **String** | Description in case the transaction fails before completion  | [optional] 

