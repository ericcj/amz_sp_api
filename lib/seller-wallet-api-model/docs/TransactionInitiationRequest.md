# AmzSpApi::SellerWalletApiModel::TransactionInitiationRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**source_account_id** | **String** | The unique identifier of the source Amazon SW bank account from where the money needs to be debited  | 
**destination_account_id** | **String** | Optional field to specify the unique identifier of the destination bank account where the money needs to be deposited  | [optional] 
**destination_transaction_instrument** | [**TransactionInstrumentDetails**](TransactionInstrumentDetails.md) |  | 
**transaction_description** | **String** | A description of the transaction. | [optional] 
**customer_payment_reference** | **String** | If the payment is for VAT (Value-Added-Tax) then enter VAT identification number in this field which will be mandatory. The length constraint is 140 characters and do not allow user to enter any sensitive information other than VAT-ID. | [optional] 
**payee_contact_information** | [**PayeeContactInformation**](PayeeContactInformation.md) |  | [optional] 
**source_amount** | [**Currency**](Currency.md) |  | 
**transfer_rate_details** | [**TransferRatePreview**](TransferRatePreview.md) |  | [optional] 
**request_time** | **DateTime** | The transaction initiation request time in date-time format  | 

