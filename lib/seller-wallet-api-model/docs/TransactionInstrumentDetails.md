# AmzSpApi::SellerWalletApiModel::TransactionInstrumentDetails

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**bank_account** | [**BankAccount**](BankAccount.md) |  | 
**bank_account_number** | **String** | This field would be used to populate the bank account number of the destination payment method. The field is intentionally not included in any other Schemas since Amazon internal systems will never receive it in unencrypted format, so field won&#x27;t be part of the request signature  | 
**account_holder_name** | **String** | The bank account holder&#x27;s name (expected to be an Amazon customer).  **Note:** This field is encrypted before Amazon receives it, so should not be used to generate &#x60;destAccountDigitalSignature&#x60;, and should not be included in the request signature. | 

