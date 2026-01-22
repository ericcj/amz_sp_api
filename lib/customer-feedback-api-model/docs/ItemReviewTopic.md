# AmzSpApi::CustomerFeedbackApiModel::ItemReviewTopic

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**topic** | **String** | The name of the item review topic. | 
**asin_metrics** | [**ItemReviewTopicMetrics**](ItemReviewTopicMetrics.md) |  | 
**parent_asin_metrics** | [**ItemReviewTopicMetrics**](ItemReviewTopicMetrics.md) |  | [optional] 
**browse_node_metrics** | [**ItemReviewBrowseNodeMetrics**](ItemReviewBrowseNodeMetrics.md) |  | [optional] 
**child_asin_metrics** | [**ChildAsinMetrics**](ChildAsinMetrics.md) |  | [optional] 
**review_snippets** | **Array&lt;String&gt;** | A list of up to three snippets from reviews that contain the topic. This value is &#x60;null&#x60; if there aren&#x27;t enough review snippets for the topic. | [optional] 
**subtopics** | [**Array&lt;ItemReviewSubtopic&gt;**](ItemReviewSubtopic.md) | A list of up to five top subtopics for the topic. The percentage of customer reviews that mention the subtopic determine the topic&#x27;s placement in the list. This value is &#x60;null&#x60; if there are no subtopics. | [optional] 

