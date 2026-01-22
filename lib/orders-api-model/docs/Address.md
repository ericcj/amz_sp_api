# AmzSpApi::OrdersApiModel::Address

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | The name. | [optional] 
**company_name** | **String** | The company name of the recipient.  **Note**: This attribute is only available for shipping address. | [optional] 
**address_line1** | **String** | The street address. | [optional] 
**address_line2** | **String** | Additional street address information, if required. | [optional] 
**address_line3** | **String** | Additional street address information, if required. | [optional] 
**city** | **String** | The city. | [optional] 
**county** | **String** | The county. | [optional] 
**district** | **String** | The district. | [optional] 
**state_or_region** | **String** | The state or region. | [optional] 
**municipality** | **String** | The municipality. | [optional] 
**postal_code** | **String** | The postal code. | [optional] 
**country_code** | **String** | The country code. A two-character country code, in ISO 3166-1 alpha-2 format. | [optional] 
**phone** | **String** | The phone number of the buyer.  **Note**:  1. This attribute is only available for shipping address. 2. In some cases, the buyer phone number is suppressed:  a. Phone is suppressed for all &#x60;AFN&#x60; (fulfilled by Amazon) orders. b. Phone is suppressed for the shipped &#x60;MFN&#x60; (fulfilled by seller) order when the current date is past the Latest Delivery Date. | [optional] 
**extended_fields** | [**AddressExtendedFields**](AddressExtendedFields.md) |  | [optional] 
**address_type** | **String** | The address type of the shipping address. | [optional] 

