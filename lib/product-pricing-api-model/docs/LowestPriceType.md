# AmzSpApi::ProductPricingApiModel::LowestPriceType

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**condition** | **String** | Indicates the condition of the item. For example: New, Used, Collectible, Refurbished, or Club. | 
**fulfillment_channel** | **String** | Indicates whether the item is fulfilled by Amazon or by the seller. | 
**offer_type** | [**OfferCustomerType**](OfferCustomerType.md) |  | [optional] 
**quantity_tier** | **Integer** | Indicates at what quantity this price becomes active. | [optional] 
**quantity_discount_type** | [**QuantityDiscountType**](QuantityDiscountType.md) |  | [optional] 
**landed_price** | [**MoneyType**](MoneyType.md) |  | 
**listing_price** | [**MoneyType**](MoneyType.md) |  | 
**shipping** | [**MoneyType**](MoneyType.md) |  | 
**points** | [**Points**](Points.md) |  | [optional] 

