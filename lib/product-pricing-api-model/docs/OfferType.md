# AmzSpApi::ProductPricingApiModel::OfferType

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**offer_type** | [**OfferCustomerType**](OfferCustomerType.md) |  | [optional] 
**buying_price** | [**PriceType**](PriceType.md) |  | 
**regular_price** | [**MoneyType**](MoneyType.md) |  | 
**business_price** | [**MoneyType**](MoneyType.md) |  | [optional] 
**quantity_discount_prices** | [**Array&lt;QuantityDiscountPriceType&gt;**](QuantityDiscountPriceType.md) |  | [optional] 
**fulfillment_channel** | **String** | The fulfillment channel for the offer listing. Possible values:  * Amazon - Fulfilled by Amazon. * Merchant - Fulfilled by the seller. | 
**item_condition** | **String** | The item condition for the offer listing. Possible values: New, Used, Collectible, Refurbished, or Club. | 
**item_sub_condition** | **String** | The item subcondition for the offer listing. Possible values: New, Mint, Very Good, Good, Acceptable, Poor, Club, OEM, Warranty, Refurbished Warranty, Refurbished, Open Box, or Other. | 
**seller_sku** | **String** | The seller stock keeping unit (SKU) of the item. | 

