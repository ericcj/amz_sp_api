# AmzSpApi::ListingsItemsApiModel::Issue

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**code** | **String** | An issue code that identifies the type of issue. | 
**message** | **String** | A message that describes the issue. | 
**severity** | **String** | The severity of the issue. | 
**attribute_names** | **Array&lt;String&gt;** | The names of the attributes associated with the issue, if applicable. | [optional] 
**categories** | **Array&lt;String&gt;** | List of issue categories.   Possible values:   * &#x27;INVALID_ATTRIBUTE&#x27; - Indicating an invalid attribute in the listing.   * &#x27;MISSING_ATTRIBUTE&#x27; - Highlighting a missing attribute in the listing.   * &#x27;INVALID_IMAGE&#x27; - Signifying an invalid image in the listing.   * &#x27;MISSING_IMAGE&#x27; - Noting the absence of an image in the listing.   * &#x27;INVALID_PRICE&#x27; - Pertaining to issues with the listing&#x27;s price-related attributes.   * &#x27;MISSING_PRICE&#x27; - Pointing out the absence of a price attribute in the listing.   * &#x27;DUPLICATE&#x27; - Identifying listings with potential duplicate problems, such as this ASIN potentially being a duplicate of another ASIN.   * &#x27;QUALIFICATION_REQUIRED&#x27; - Indicating that the listing requires qualification-related approval. | 
**enforcements** | [**IssueEnforcements**](IssueEnforcements.md) |  | [optional] 

