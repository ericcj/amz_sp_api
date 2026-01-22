# AmzSpApi::SellerWalletApiModel::TransactionAccount

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**account_id** | **String** | The unique identifier provided by Amazon to identify the account  | [optional] 
**bank_account_holder_name** | **String** | BankAccount holder&#x27;s name  | [optional] 
**bank_name** | **String** | The name of the bank  | 
**bank_account_number_format** | [**BankAccountNumberFormat**](BankAccountNumberFormat.md) |  | 
**bank_account_number_tail** | **String** | Last 3 digit of the bank account number  | [optional] 
**bank_account_country_code** | **String** | The two digit country code, in ISO 3166 format. This field is OPTIONAL for transactionSourceAccount object but is MANDATORY field for transactionDestinationAccount  | [optional] 
**bank_account_currency** | **String** | The currency code in ISO 4217 format  | 

