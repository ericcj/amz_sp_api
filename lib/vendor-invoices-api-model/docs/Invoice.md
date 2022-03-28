# AmzSpApi::VendorInvoicesApiModel::Invoice

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**invoice_type** | **String** | Identifies the type of invoice. | 
**id** | **String** | Unique number relating to the charges defined in this document. This will be invoice number if the document type is Invoice or CreditNote number if the document type is Credit Note. Failure to provide this reference will result in a rejection. | 
**reference_number** | **String** | An additional unique reference number used for regulatory or other purposes. | [optional] 
**date** | **DateTime** |  | 
**remit_to_party** | [**PartyIdentification**](PartyIdentification.md) |  | 
**ship_to_party** | [**PartyIdentification**](PartyIdentification.md) |  | [optional] 
**ship_from_party** | [**PartyIdentification**](PartyIdentification.md) |  | [optional] 
**bill_to_party** | [**PartyIdentification**](PartyIdentification.md) |  | [optional] 
**payment_terms** | [**PaymentTerms**](PaymentTerms.md) |  | [optional] 
**invoice_total** | [**Money**](Money.md) |  | 
**tax_details** | [**Array&lt;TaxDetails&gt;**](TaxDetails.md) | Total tax amount details for all line items. | [optional] 
**additional_details** | [**Array&lt;AdditionalDetails&gt;**](AdditionalDetails.md) | Additional details provided by the selling party, for tax related or other purposes. | [optional] 
**charge_details** | [**Array&lt;ChargeDetails&gt;**](ChargeDetails.md) | Total charge amount details for all line items. | [optional] 
**allowance_details** | [**Array&lt;AllowanceDetails&gt;**](AllowanceDetails.md) | Total allowance amount details for all line items. | [optional] 
**items** | [**Array&lt;InvoiceItem&gt;**](InvoiceItem.md) | The list of invoice items. | [optional] 

