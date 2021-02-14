# AmzSpApi::ProductPricingApiModel::OfferDetail

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**my_offer** | **BOOLEAN** | When true, this is the seller&#x27;s offer. | [optional] 
**sub_condition** | **String** | The subcondition of the item. Subcondition values: New, Mint, Very Good, Good, Acceptable, Poor, Club, OEM, Warranty, Refurbished Warranty, Refurbished, Open Box, or Other. | 
**seller_feedback_rating** | [**SellerFeedbackType**](SellerFeedbackType.md) |  | [optional] 
**shipping_time** | [**DetailedShippingTimeType**](DetailedShippingTimeType.md) |  | 
**listing_price** | [**MoneyType**](MoneyType.md) |  | 
**points** | [**Points**](Points.md) |  | [optional] 
**shipping** | [**MoneyType**](MoneyType.md) |  | 
**ships_from** | [**ShipsFromType**](ShipsFromType.md) |  | [optional] 
**is_fulfilled_by_amazon** | **BOOLEAN** | When true, the offer is fulfilled by Amazon. | 
**is_buy_box_winner** | **BOOLEAN** | When true, the offer is currently in the Buy Box. There can be up to two Buy Box winners at any time per ASIN, one that is eligible for Prime and one that is not eligible for Prime. | [optional] 
**is_featured_merchant** | **BOOLEAN** | When true, the seller of the item is eligible to win the Buy Box. | [optional] 

