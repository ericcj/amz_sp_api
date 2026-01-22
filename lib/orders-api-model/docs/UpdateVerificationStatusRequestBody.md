# AmzSpApi::OrdersApiModel::UpdateVerificationStatusRequestBody

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**status** | [**VerificationStatus**](VerificationStatus.md) |  | [optional] 
**external_reviewer_id** | **String** | The identifier of the order&#x27;s regulated information reviewer. | 
**rejection_reason_id** | **String** | The unique identifier of the rejection reason used for rejecting the order&#x27;s regulated information. Only required if the new status is rejected. | [optional] 
**verification_details** | [**VerificationDetails**](VerificationDetails.md) |  | [optional] 

