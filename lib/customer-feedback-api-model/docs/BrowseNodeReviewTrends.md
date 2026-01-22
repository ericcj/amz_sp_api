# AmzSpApi::CustomerFeedbackApiModel::BrowseNodeReviewTrends

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**positive_topics** | [**Array&lt;BrowseNodeReviewTrend&gt;**](BrowseNodeReviewTrend.md) | The trends of the most positive review topics. The percentage of reviews that contain the topic across all products in the requested browse node determine the topic&#x27;s placement in the list. This value is &#x60;null&#x60; if there aren&#x27;t enough positive reviews for the requested browse node.  **Max length:** 10 | [optional] 
**negative_topics** | [**Array&lt;BrowseNodeReviewTrend&gt;**](BrowseNodeReviewTrend.md) | The trends of the most negative review topics. The percentage of reviews that contain the topic across all products in the requested browse node determine the topic&#x27;s placement in the list. This value is &#x60;null&#x60; if there aren&#x27;t enough positive reviews for the requested browse node.  **Max length:** 10 | [optional] 

