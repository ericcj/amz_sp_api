# AmzSpApi::VendorShipmentsApiModel::ImportDetails

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**method_of_payment** | **String** | This is used for import purchase orders only. If the recipient requests, this field will contain the shipment method of payment. | [optional] 
**seal_number** | **String** | The container&#x27;s seal number. | [optional] 
**route** | [**Route**](Route.md) |  | [optional] 
**import_containers** | **String** | Types and numbers of container(s) for import purchase orders. Can be a comma-separated list if shipment has multiple containers. | [optional] 
**billable_weight** | [**Weight**](Weight.md) |  | [optional] 
**estimated_ship_by_date** | **DateTime** | Date on which the shipment is expected to be shipped. This value should not be in the past and not more than 60 days out in the future. | [optional] 
**handling_instructions** | **String** | Identification of the instructions on how specified item/carton/pallet should be handled. | [optional] 

