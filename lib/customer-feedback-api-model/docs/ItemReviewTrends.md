# AmzSpApi::CustomerFeedbackApiModel::ItemReviewTrends

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**positive_topics** | [**Array&lt;ItemReviewTrend&gt;**](ItemReviewTrend.md) | A list of the most positive review topics. The percentage of reviews that contain the topic determines the topic&#x27;s placement in the list. This value is &#x60;null&#x60; if there are not enough positive reviews for the specified ASIN.  **Max length:** 10 | [optional] 
**negative_topics** | [**Array&lt;ItemReviewTrend&gt;**](ItemReviewTrend.md) | A list of the most negative review topics. The percentage of reviews that contain the topic determines the topic&#x27;s placement in the list. This value is &#x60;null&#x60; if there are not enough negative reviews for the specified ASIN.  **Max length:** 10 | [optional] 

