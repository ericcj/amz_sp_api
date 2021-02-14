# AmzSpApi::FinancesApiModel::FinancialEventGroup

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**financial_event_group_id** | **String** | A unique identifier for the financial event group. | [optional] 
**processing_status** | **String** | The processing status of the financial event group indicates whether the balance of the financial event group is settled.  Possible values:  * Open  * Closed | [optional] 
**fund_transfer_status** | **String** | The status of the fund transfer. | [optional] 
**original_total** | [**Currency**](Currency.md) |  | [optional] 
**converted_total** | [**Currency**](Currency.md) |  | [optional] 
**fund_transfer_date** | **Date** |  | [optional] 
**trace_id** | **String** | The trace identifier used by sellers to look up transactions externally. | [optional] 
**account_tail** | **String** | The account tail of the payment instrument. | [optional] 
**beginning_balance** | [**Currency**](Currency.md) |  | [optional] 
**financial_event_group_start** | **Date** |  | [optional] 
**financial_event_group_end** | **Date** |  | [optional] 

