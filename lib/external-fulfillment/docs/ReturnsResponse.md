# AmzSpApi::ExternalFulfillment::ReturnsResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**returns** | [**Array&lt;ModelReturn&gt;**](ModelReturn.md) | A list of returns. | [optional] 
**next_token** | **String** | A token that you use to retrieve the next page of results. The response includes &#x60;nextToken&#x60; when there are multiple pages of results. To get the next page of results, call the operation with this token and include the same arguments as the call that produced the token. To get a complete list, call this operation until &#x60;nextToken&#x60; is null. Note that this operation can return empty pages. | [optional] 

