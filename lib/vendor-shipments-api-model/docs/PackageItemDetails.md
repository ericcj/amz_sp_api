# AmzSpApi::VendorShipmentsApiModel::PackageItemDetails

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**purchase_order_number** | **String** | The purchase order number for the shipment being confirmed. If the items in this shipment belong to multiple purchase order numbers that are in particular carton or pallet within the shipment, then provide the purchaseOrderNumber at the appropriate carton or pallet level. Formatting Notes: 8-character alpha-numeric code. | [optional] 
**lot_number** | **String** | The batch or lot number associates an item with information the manufacturer considers relevant for traceability of the trade item to which the Element String is applied. The data may refer to the trade item itself or to items contained. This field is mandatory for all perishable items. | [optional] 
**lot_number_source_reference** | **String** | This is a reference to the lot number source location meaning the place where the product was assigned a traceability lot number. This is mandatory for goods in scope of the FDA Food Safety Modernization Act (FSMA 204). If provided, lotNumberSourceType must also be specified. | [optional] 
**lot_number_source_type** | **String** | The type of reference for the lot number source. Must be provided when lotNumberSourceReference is specified. | [optional] 
**country_of_origin** | **String** | The two digit country code in ISO 3166-1 alpha-2 format representing the country where the product was manufactured or originated. | [optional] 
**regulation_references** | [**RegulationReferences**](RegulationReferences.md) |  | [optional] 
**expiry** | [**Expiry**](Expiry.md) |  | [optional] 

