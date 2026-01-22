# AmzSpApi::VendorDirectFulfillmentPaymentsApiModel::InvoiceItem

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**item_sequence_number** | **String** | Numbering of the item on the purchase order. The first item will be 1, the second 2, and so on. | 
**buyer_product_identifier** | **String** | Buyer&#x27;s standard identification number (ASIN) of an item. | [optional] 
**vendor_product_identifier** | **String** | The vendor selected product identification of the item. | [optional] 
**invoiced_quantity** | [**ItemQuantity**](ItemQuantity.md) |  | 
**net_cost** | [**Money**](Money.md) |  | 
**purchase_order_number** | **String** | The purchase order number for this order. Formatting Notes: 8-character alpha-numeric code. | 
**vendor_order_number** | **String** | The vendor&#x27;s order number for this order. | [optional] 
**hsn_code** | **String** | Harmonized System of Nomenclature (HSN) tax code. The HSN number cannot contain alphabets. | [optional] 
**tax_details** | [**Array&lt;TaxDetail&gt;**](TaxDetail.md) | Individual tax details per line item. | [optional] 
**charge_details** | [**Array&lt;ChargeDetails&gt;**](ChargeDetails.md) | Individual charge details per line item. | [optional] 

