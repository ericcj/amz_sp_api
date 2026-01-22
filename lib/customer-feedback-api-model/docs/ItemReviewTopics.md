# AmzSpApi::CustomerFeedbackApiModel::ItemReviewTopics

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**positive_topics** | [**Array&lt;ItemReviewTopic&gt;**](ItemReviewTopic.md) | A list of the most positive review topics. When the &#x60;sortBy&#x60; query parameter is set to &#x60;MENTIONS&#x60;, the number of reviews that mention the topic determines the topic&#x27;s placement in the list. When &#x60;sortBy&#x60; is set to &#x60;STAR_RATING_IMPACT&#x60;, the effect that the topic has on the star rating of the item determines placement in the list. This value is &#x60;null&#x60; if there are not enough positive reviews for the specified ASIN.  **Max length:** 10 | [optional] 
**negative_topics** | [**Array&lt;ItemReviewTopic&gt;**](ItemReviewTopic.md) | A list of the most negative review topics. When the &#x60;sortBy&#x60; query parameter is set to &#x60;MENTIONS&#x60;, the number of reviews that mention the topic determines the topic&#x27;s placement in the list. When &#x60;sortBy&#x60; is set to &#x60;STAR_RATING_IMPACT&#x60;, the effect that the topic has on the star rating of the item determines placement in the list. This value is &#x60;null&#x60; if there are not enough negative reviews for the specified ASIN.  **Max length:** 10 | [optional] 

