# AmzSpApi::ShippingApiModel::PurchaseShipmentRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**request_token** | [**RequestToken**](RequestToken.md) |  | 
**rate_id** | [**RateId**](RateId.md) |  | 
**requested_document_specification** | [**RequestedDocumentSpecification**](RequestedDocumentSpecification.md) |  | 
**requested_value_added_services** | [**RequestedValueAddedServiceList**](RequestedValueAddedServiceList.md) |  | [optional] 
**additional_inputs** | **Hash&lt;String, Object&gt;** | The additional inputs required to purchase a shipping offering, in JSON format. The JSON provided here must adhere to the JSON schema that is returned in the response to the getAdditionalInputs operation.  Additional inputs are only required when indicated by the requiresAdditionalInputs property in the response to the getRates operation. | [optional] 

