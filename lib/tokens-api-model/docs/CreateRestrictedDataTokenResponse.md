# AmzSpApi::TokensApiModel::CreateRestrictedDataTokenResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**restricted_data_token** | **String** | A Restricted Data Token (RDT). This is a short-lived access token that authorizes calls to restricted operations. Pass this value with the x-amz-access-token header when making subsequent calls to these restricted resources. | [optional] 
**expires_in** | **Integer** | The lifetime of the Restricted Data Token, in seconds. | [optional] 

