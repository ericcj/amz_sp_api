# AmzSpApi::VendorInvoicesApiModel::InvoiceItem

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**item_sequence_number** | **Integer** | Unique number related to this line item. | 
**amazon_product_identifier** | **String** | Amazon Standard Identification Number (ASIN) of an item. | [optional] 
**vendor_product_identifier** | **String** | The vendor selected product identifier of the item. Should be the same as was provided in the purchase order. | [optional] 
**invoiced_quantity** | [**ItemQuantity**](ItemQuantity.md) |  | 
**net_cost** | [**Money**](Money.md) |  | 
**net_cost_unit_of_measure** | [**NetCostUnitOfMeasure**](NetCostUnitOfMeasure.md) |  | [optional] 
**purchase_order_number** | **String** | The Amazon purchase order number for this invoiced line item. Formatting Notes: 8-character alpha-numeric code. This value is mandatory only when invoiceType is Invoice, and is not required when invoiceType is CreditNote. | [optional] 
**hsn_code** | **String** | HSN Tax code. The HSN number cannot contain alphabets. | [optional] 
**credit_note_details** | [**CreditNoteDetails**](CreditNoteDetails.md) |  | [optional] 
**tax_details** | [**Array&lt;TaxDetails&gt;**](TaxDetails.md) | Individual tax details per line item. | [optional] 
**charge_details** | [**Array&lt;ChargeDetails&gt;**](ChargeDetails.md) | Individual charge details per line item. | [optional] 
**allowance_details** | [**Array&lt;AllowanceDetails&gt;**](AllowanceDetails.md) | Individual allowance details per line item. | [optional] 

