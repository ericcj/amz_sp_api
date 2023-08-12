# AmzSpApi::OrdersApiModel::PackageDetail

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**package_reference_id** | [**PackageReferenceId**](PackageReferenceId.md) |  | 
**carrier_code** | **String** | Identifies the carrier that will deliver the package. This field is required for all marketplaces, see [reference](https://developer-docs.amazon.com/sp-api/changelog/carriercode-value-required-in-shipment-confirmations-for-br-mx-ca-sg-au-in-jp-marketplaces). | 
**carrier_name** | **String** | Carrier Name that will deliver the package. Required when carrierCode is \&quot;Others\&quot;  | [optional] 
**shipping_method** | **String** | Ship method to be used for shipping the order. | [optional] 
**tracking_number** | **String** | The tracking number used to obtain tracking and delivery information. | 
**ship_date** | **DateTime** | The shipping date for the package. Must be in ISO-8601 date/time format. | 
**ship_from_supply_source_id** | **String** | The unique identifier of the supply source. | [optional] 
**order_items** | [**ConfirmShipmentOrderItemsList**](ConfirmShipmentOrderItemsList.md) |  | 

