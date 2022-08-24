# AmzSpApi::CatalogItemsApiModel::ItemSearchResults

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**number_of_results** | **Integer** | For &#x60;identifiers&#x60;-based searches, the total number of Amazon catalog items found. For &#x60;keywords&#x60;-based searches, the estimated total number of Amazon catalog items matched by the search query (only results up to the page count limit will be returned per request regardless of the number found).  Note: The maximum number of items (ASINs) that can be returned and paged through is 1000. | 
**pagination** | [**Pagination**](Pagination.md) |  | 
**refinements** | [**Refinements**](Refinements.md) |  | 
**items** | [**Array&lt;Item&gt;**](Item.md) | A list of items from the Amazon catalog. | 

