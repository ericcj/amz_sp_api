# AmzSpApi::SellerWalletApiModel::BankAccount

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**account_id** | **String** | The unique bank account identifier provided by Amazon. To initiate a &#x60;SELF&#x60; transaction with Seller Wallet, you must choose &#x60;BANK_ACCOUNT&#x60; as the payment method type in the [getPaymentMethod](https://developer-docs.amazon.com/sp-api/reference/getpaymentmethods) request. Your Amazon Seller Wallet bank account identifier should match the &#x60;paymentMethodId&#x60; in the response. This field is required. | [optional] 
**account_holder_name** | **String** | The bank account holder&#x27;s name (expected to be an Amazon customer). There is a 50 character limit. | [optional] 
**bank_account_number_format** | [**BankAccountNumberFormat**](BankAccountNumberFormat.md) |  | [optional] 
**bank_name** | **String** | The name of the bank. This value is Amazon Seller Wallet for Amazon Seller Wallet accounts. | [optional] 
**bank_account_ownership_type** | [**BankAccountOwnershipType**](BankAccountOwnershipType.md) |  | 
**routing_number** | **String** | Routing number for automated clearing house transfers for &#x60;THIRD_PARTY&#x60; transaction requests. This value is nine consecutive zeros for Amazon Seller Wallet accounts. | [optional] 
**bank_number_format** | [**BankNumberFormat**](BankNumberFormat.md) |  | [optional] 
**account_country_code** | **String** | The two digit country code, in ISO 3166 format.  | 
**account_currency** | **String** | BankAccount currency code in ISO 4217 format  | 
**bank_account_number_tail** | **String** | Last 3 digit of the bank account number, for all Amazon Seller Wallet account the value will be three consecutive 0&#x27;s  | 
**bank_account_holder_status** | [**BankAccountHolderStatus**](BankAccountHolderStatus.md) |  | [optional] 

