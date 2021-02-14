# AmzSpApi::FinancesApiModel::PayWithAmazonEvent

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**seller_order_id** | **String** | An order identifier that is specified by the seller. | [optional] 
**transaction_posted_date** | **Date** |  | [optional] 
**business_object_type** | **String** | The type of business object. | [optional] 
**sales_channel** | **String** | The sales channel for the transaction. | [optional] 
**charge** | [**ChargeComponent**](ChargeComponent.md) |  | [optional] 
**fee_list** | [**FeeComponentList**](FeeComponentList.md) |  | [optional] 
**payment_amount_type** | **String** | The type of payment.  Possible values:  * Sales | [optional] 
**amount_description** | **String** | A short description of this payment event. | [optional] 
**fulfillment_channel** | **String** | The fulfillment channel.  Possible values:  * AFN - Amazon Fulfillment Network (Fulfillment by Amazon)  * MFN - Merchant Fulfillment Network (self-fulfilled) | [optional] 
**store_name** | **String** | The store name where the event occurred. | [optional] 

