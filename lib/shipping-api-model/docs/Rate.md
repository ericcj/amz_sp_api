# AmzSpApi::ShippingApiModel::Rate

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**rate_id** | [**RateId**](RateId.md) |  | 
**carrier_id** | [**CarrierId**](CarrierId.md) |  | 
**carrier_name** | [**CarrierName**](CarrierName.md) |  | 
**service_id** | [**ServiceId**](ServiceId.md) |  | 
**service_name** | [**ServiceName**](ServiceName.md) |  | 
**billed_weight** | [**Weight**](Weight.md) |  | [optional] 
**total_charge** | [**Currency**](Currency.md) |  | 
**promise** | [**Promise**](Promise.md) |  | 
**supported_document_specifications** | [**SupportedDocumentSpecificationList**](SupportedDocumentSpecificationList.md) |  | 
**available_value_added_service_groups** | [**AvailableValueAddedServiceGroupList**](AvailableValueAddedServiceGroupList.md) |  | [optional] 
**requires_additional_inputs** | **BOOLEAN** | When true, indicates that additional inputs are required to purchase this shipment service. You must then call the getAdditionalInputs operation to return the JSON schema to use when providing the additional inputs to the purchaseShipment operation. | 
**rate_item_list** | [**RateItemList**](RateItemList.md) |  | [optional] 
**payment_type** | [**PaymentType**](PaymentType.md) |  | [optional] 
**benefits** | [**Benefits**](Benefits.md) |  | [optional] 

