# AmzSpApi::OrdersApiModel::PaymentExecutionDetailItem

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**payment** | [**Money**](Money.md) |  | 
**payment_method** | **String** | The sub-payment method for an order.   **Possible values**: * &#x60;COD&#x60;: Cash on delivery  * &#x60;GC&#x60;: Gift card  * &#x60;PointsAccount&#x60;: Amazon Points  * &#x60;Invoice&#x60;: Invoice  * &#x60;CreditCard&#x60;: Credit card  * &#x60;Pix&#x60;: Pix  * &#x60;Other&#x60;: Other. | 
**acquirer_id** | **String** | The Brazilian Taxpayer Identifier (CNPJ) of the payment processor or acquiring bank that authorizes the payment.   **Note**: This attribute is only available for orders in the Brazil (BR) marketplace when the &#x60;PaymentMethod&#x60; is &#x60;CreditCard&#x60; or &#x60;Pix&#x60;. | [optional] 
**card_brand** | **String** | The card network or brand used in the payment transaction (for example, Visa or Mastercard).   **Note**: This attribute is only available for orders in the Brazil (BR) marketplace when the &#x60;PaymentMethod&#x60; is &#x60;CreditCard&#x60;. | [optional] 
**authorization_code** | **String** | The unique code that confirms the payment authorization.   **Note**: This attribute is only available for orders in the Brazil (BR) marketplace when the &#x60;PaymentMethod&#x60; is &#x60;CreditCard&#x60; or &#x60;Pix&#x60;. | [optional] 

