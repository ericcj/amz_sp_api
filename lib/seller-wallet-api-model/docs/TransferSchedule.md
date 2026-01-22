# AmzSpApi::SellerWalletApiModel::TransferSchedule

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**transfer_schedule_id** | **String** | The unique identifier provided by Amazon to the scheduled transfer  | 
**transaction_type** | [**TransactionType**](TransactionType.md) |  | 
**transaction_source_account** | [**TransactionAccount**](TransactionAccount.md) |  | [optional] 
**transaction_destination_account** | [**TransactionAccount**](TransactionAccount.md) |  | 
**transfer_schedule_status** | [**TransferScheduleStatus**](TransferScheduleStatus.md) |  | 
**transfer_schedule_information** | [**TransferScheduleInformation**](TransferScheduleInformation.md) |  | 
**payment_preference** | [**PaymentPreference**](PaymentPreference.md) |  | [optional] 
**transfer_schedule_failures** | [**Array&lt;TransferScheduleFailures&gt;**](TransferScheduleFailures.md) | Collection that holds Transfer Schedules that has been cancelled or failed due to certain reasons.  | 

