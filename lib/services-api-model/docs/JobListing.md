# AmzSpApi::ServicesApiModel::JobListing

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**total_result_size** | **Integer** | Total result size of the query result. | [optional] 
**next_page_token** | **String** | A generated string used to pass information to your next request. If &#x60;nextPageToken&#x60; is returned, pass the value of &#x60;nextPageToken&#x60; to the &#x60;pageToken&#x60; to get next results. | [optional] 
**previous_page_token** | **String** | A generated string used to pass information to your next request. If &#x60;previousPageToken&#x60; is returned, pass the value of &#x60;previousPageToken&#x60; to the &#x60;pageToken&#x60; to get previous page results. | [optional] 
**jobs** | [**Array&lt;ServiceJob&gt;**](ServiceJob.md) | List of job details for the given input. | [optional] 

