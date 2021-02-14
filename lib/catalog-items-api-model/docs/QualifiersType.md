# AmzSpApi::CatalogItemsApiModel::QualifiersType

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**item_condition** | **String** | The condition of the item. Possible values: New, Used, Collectible, Refurbished, or Club. | 
**item_subcondition** | **String** | The item subcondition for the offer listing. Possible values: New, Mint, Very Good, Good, Acceptable, Poor, Club, OEM, Warranty, Refurbished Warranty, Refurbished, Open Box, or Other. | 
**fulfillment_channel** | **String** | The fulfillment channel for the item. Possible values:  * Amazon - Fulfilled by Amazon. * Merchant - Fulfilled by the seller. | 
**ships_domestically** | **String** | Indicates whether the marketplace specified in the request and the location that the item ships from are in the same country. Possible values: True, False, or Unknown. | 
**shipping_time** | [**ShippingTimeType**](ShippingTimeType.md) |  | 
**seller_positive_feedback_rating** | **String** | (98-100%, 95-97%, 90-94%, 80-89%, 70-79%, Less than 70%, or Just launched ) – Indicates the percentage of feedback ratings that were positive over the past 12 months. | 

