# AmzSpApi::VendorDirectFulfillmentShippingApiModel::LabelData

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**package_identifier** | **String** | Identifier for the package. The first package will be 001, the second 002, and so on. This number is used as a reference to refer to this package from the pallet level. | [optional] 
**tracking_number** | **String** | Package tracking identifier from the shipping carrier. | [optional] 
**ship_method** | **String** | Ship method to be used for shipping the order. Amazon defines Ship Method Codes indicating shipping carrier and shipment service level. Ship Method Codes are case and format sensitive. The same ship method code should returned on the shipment confirmation. Note that the Ship Method Codes are vendor specific and will be provided to each vendor during the implementation. | [optional] 
**ship_method_name** | **String** | Shipping method name for internal reference. | [optional] 
**content** | **String** | This field will contain the Base64encoded string of the shipment label content. | 

