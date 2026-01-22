# AmzSpApi::CustomerFeedbackApiModel::BrowseNodeReviewTopic

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**topic** | **String** | The name browse node review topic. | 
**browse_node_metrics** | [**BrowseNodeReviewTopicMetrics**](BrowseNodeReviewTopicMetrics.md) |  | 
**review_snippets** | **Array&lt;String&gt;** | A list of up to three snippets from reviews that contain the topic. This value is &#x60;null&#x60; if there aren&#x27;t enough review snippets for the topic. | [optional] 
**subtopics** | [**Array&lt;BrowseNodeSubtopic&gt;**](BrowseNodeSubtopic.md) | A list of the five subtopics that occur most frequently. This value is &#x60;null&#x60; if there are no subtopics. | [optional] 

