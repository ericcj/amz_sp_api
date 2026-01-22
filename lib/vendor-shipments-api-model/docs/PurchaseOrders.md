# AmzSpApi::VendorShipmentsApiModel::PurchaseOrders

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**purchase_order_number** | **String** | Purchase order numbers involved in this shipment, list all the PO that are involved as part of this shipment. | [optional] 
**purchase_order_date** | **DateTime** | Purchase order numbers involved in this shipment, list all the PO that are involved as part of this shipment. | [optional] 
**ship_window** | **String** | Date range in which shipment is expected for these purchase orders. | [optional] 
**items** | [**Array&lt;PurchaseOrderItems&gt;**](PurchaseOrderItems.md) | A list of the items that are associated to the PO in this transport and their associated details. | [optional] 

