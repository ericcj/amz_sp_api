# AmzSpApi::OrdersApiModel::Order

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**amazon_order_id** | **String** | An Amazon-defined order identifier, in 3-7-7 format. | 
**seller_order_id** | **String** | A seller-defined order identifier. | [optional] 
**purchase_date** | **String** | The date when the order was created. | 
**last_update_date** | **String** | The date when the order was last updated.  __Note__: LastUpdateDate is returned with an incorrect date for orders that were last updated before 2009-04-01. | 
**order_status** | **String** | The current order status. | 
**fulfillment_channel** | **String** | Whether the order was fulfilled by Amazon (AFN) or by the seller (MFN). | [optional] 
**sales_channel** | **String** | The sales channel of the first item in the order. | [optional] 
**order_channel** | **String** | The order channel of the first item in the order. | [optional] 
**ship_service_level** | **String** | The shipment service level of the order. | [optional] 
**order_total** | [**Money**](Money.md) |  | [optional] 
**number_of_items_shipped** | **Integer** | The number of items shipped. | [optional] 
**number_of_items_unshipped** | **Integer** | The number of items unshipped. | [optional] 
**payment_execution_detail** | [**PaymentExecutionDetailItemList**](PaymentExecutionDetailItemList.md) |  | [optional] 
**payment_method** | **String** | The payment method for the order. This property is limited to Cash On Delivery (COD) and Convenience Store (CVS) payment methods. Unless you need the specific COD payment information provided by the PaymentExecutionDetailItem object, we recommend using the PaymentMethodDetails property to get payment method information. | [optional] 
**payment_method_details** | [**PaymentMethodDetailItemList**](PaymentMethodDetailItemList.md) |  | [optional] 
**marketplace_id** | **String** | The identifier for the marketplace where the order was placed. | [optional] 
**shipment_service_level_category** | **String** | The shipment service level category of the order.  Possible values: Expedited, FreeEconomy, NextDay, SameDay, SecondDay, Scheduled, Standard. | [optional] 
**easy_ship_shipment_status** | [**EasyShipShipmentStatus**](EasyShipShipmentStatus.md) |  | [optional] 
**cba_displayable_shipping_label** | **String** | Custom ship label for Checkout by Amazon (CBA). | [optional] 
**order_type** | **String** | The type of the order. | [optional] 
**earliest_ship_date** | **String** | The start of the time period within which you have committed to ship the order. In ISO 8601 date time format. Returned only for seller-fulfilled orders.  __Note__: EarliestShipDate might not be returned for orders placed before February 1, 2013. | [optional] 
**latest_ship_date** | **String** | The end of the time period within which you have committed to ship the order. In ISO 8601 date time format. Returned only for seller-fulfilled orders.  __Note__: LatestShipDate might not be returned for orders placed before February 1, 2013. | [optional] 
**earliest_delivery_date** | **String** | The start of the time period within which you have committed to fulfill the order. In ISO 8601 date time format. Returned only for seller-fulfilled orders. | [optional] 
**latest_delivery_date** | **String** | The end of the time period within which you have committed to fulfill the order. In ISO 8601 date time format. Returned only for seller-fulfilled orders that do not have a PendingAvailability, Pending, or Canceled status. | [optional] 
**is_business_order** | **BOOLEAN** | When true, the order is an Amazon Business order. An Amazon Business order is an order where the buyer is a Verified Business Buyer. | [optional] 
**is_prime** | **BOOLEAN** | When true, the order is a seller-fulfilled Amazon Prime order. | [optional] 
**is_premium_order** | **BOOLEAN** | When true, the order has a Premium Shipping Service Level Agreement. For more information about Premium Shipping orders, see \&quot;Premium Shipping Options\&quot; in the Seller Central Help for your marketplace. | [optional] 
**is_global_express_enabled** | **BOOLEAN** | When true, the order is a GlobalExpress order. | [optional] 
**replaced_order_id** | **String** | The order ID value for the order that is being replaced. Returned only if IsReplacementOrder &#x3D; true. | [optional] 
**is_replacement_order** | **BOOLEAN** | When true, this is a replacement order. | [optional] 
**promise_response_due_date** | **String** | Indicates the date by which the seller must respond to the buyer with an estimated ship date. Returned only for Sourcing on Demand orders. | [optional] 
**is_estimated_ship_date_set** | **BOOLEAN** | When true, the estimated ship date is set for the order. Returned only for Sourcing on Demand orders. | [optional] 
**is_sold_by_ab** | **BOOLEAN** | When true, the item within this order was bought and re-sold by Amazon Business EU SARL (ABEU). By buying and instantly re-selling your items, ABEU becomes the seller of record, making your inventory available for sale to customers who would not otherwise purchase from a third-party seller. | [optional] 
**is_iba** | **BOOLEAN** | When true, the item within this order was bought and re-sold by Amazon Business EU SARL (ABEU). By buying and instantly re-selling your items, ABEU becomes the seller of record, making your inventory available for sale to customers who would not otherwise purchase from a third-party seller. | [optional] 
**default_ship_from_location_address** | [**Address**](Address.md) |  | [optional] 
**buyer_invoice_preference** | **String** | The buyer&#x27;s invoicing preference. Available only in the TR marketplace. | [optional] 
**buyer_tax_information** | [**BuyerTaxInformation**](BuyerTaxInformation.md) |  | [optional] 
**fulfillment_instruction** | [**FulfillmentInstruction**](FulfillmentInstruction.md) |  | [optional] 
**is_ispu** | **BOOLEAN** | When true, this order is marked to be picked up from a store rather than delivered. | [optional] 
**is_access_point_order** | **BOOLEAN** | When true, this order is marked to be delivered to an Access Point. The access location is chosen by the customer. Access Points include Amazon Hub Lockers, Amazon Hub Counters, and pickup points operated by carriers. | [optional] 
**marketplace_tax_info** | [**MarketplaceTaxInfo**](MarketplaceTaxInfo.md) |  | [optional] 
**seller_display_name** | **String** | The seller’s friendly name registered in the marketplace. | [optional] 
**shipping_address** | [**Address**](Address.md) |  | [optional] 
**buyer_info** | [**BuyerInfo**](BuyerInfo.md) |  | [optional] 
**automated_shipping_settings** | [**AutomatedShippingSettings**](AutomatedShippingSettings.md) |  | [optional] 
**has_regulated_items** | **BOOLEAN** | Whether the order contains regulated items which may require additional approval steps before being fulfilled. | [optional] 
**electronic_invoice_status** | [**ElectronicInvoiceStatus**](ElectronicInvoiceStatus.md) |  | [optional] 

