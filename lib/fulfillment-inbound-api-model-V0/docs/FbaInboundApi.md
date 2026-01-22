# AmzSpApi::FulfillmentInboundApiModelV0::FbaInboundApi

All URIs are relative to *https://sellingpartnerapi-na.amazon.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_bill_of_lading**](FbaInboundApi.md#get_bill_of_lading) | **GET** /fba/inbound/v0/shipments/{shipmentId}/billOfLading | 
[**get_labels**](FbaInboundApi.md#get_labels) | **GET** /fba/inbound/v0/shipments/{shipmentId}/labels | 
[**get_prep_instructions**](FbaInboundApi.md#get_prep_instructions) | **GET** /fba/inbound/v0/prepInstructions | 
[**get_shipment_items**](FbaInboundApi.md#get_shipment_items) | **GET** /fba/inbound/v0/shipmentItems | 
[**get_shipment_items_by_shipment_id**](FbaInboundApi.md#get_shipment_items_by_shipment_id) | **GET** /fba/inbound/v0/shipments/{shipmentId}/items | 
[**get_shipments**](FbaInboundApi.md#get_shipments) | **GET** /fba/inbound/v0/shipments | 

# **get_bill_of_lading**
> GetBillOfLadingResponse get_bill_of_lading(shipment_id)



Returns a bill of lading for a Less Than Truckload/Full Truckload (LTL/FTL) shipment. The getBillOfLading operation returns PDF document data for printing a bill of lading for an Amazon-partnered Less Than Truckload/Full Truckload (LTL/FTL) inbound shipment.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 2 | 30 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values than those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'fulfillment-inbound-api-model-V0'

api_instance = AmzSpApi::FulfillmentInboundApiModelV0::FbaInboundApi.new
shipment_id = 'shipment_id_example' # String | A shipment identifier originally returned by the createInboundShipmentPlan operation.


begin
  result = api_instance.get_bill_of_lading(shipment_id)
  p result
rescue AmzSpApi::FulfillmentInboundApiModelV0::ApiError => e
  puts "Exception when calling FbaInboundApi->get_bill_of_lading: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **shipment_id** | **String**| A shipment identifier originally returned by the createInboundShipmentPlan operation. | 

### Return type

[**GetBillOfLadingResponse**](GetBillOfLadingResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_labels**
> GetLabelsResponse get_labels(shipment_id, page_type, label_type, opts)



Returns package/pallet labels for faster and more accurate shipment processing at the Amazon fulfillment center.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 2 | 30 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values than those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'fulfillment-inbound-api-model-V0'

api_instance = AmzSpApi::FulfillmentInboundApiModelV0::FbaInboundApi.new
shipment_id = 'shipment_id_example' # String | A shipment identifier originally returned by the createInboundShipmentPlan operation.
page_type = 'page_type_example' # String | The page type to use to print the labels. Submitting a PageType value that is not supported in your marketplace returns an error.
label_type = 'label_type_example' # String | The type of labels requested. 
opts = { 
  number_of_packages: 56, # Integer | The number of packages in the shipment.
  package_labels_to_print: ['package_labels_to_print_example'], # Array<String> | A list of identifiers that specify packages for which you want package labels printed.  If you provide box content information with the [FBA Inbound Shipment Carton Information Feed](https://developer-docs.amazon.com/sp-api/docs/fulfillment-by-amazon-feed-type-values#fba-inbound-shipment-carton-information-feed), then `PackageLabelsToPrint` must match the `CartonId` values you provide through that feed. If you provide box content information with the Fulfillment Inbound API v2024-03-20, then `PackageLabelsToPrint` must match the `boxID` values from the [`listShipmentBoxes`](https://developer-docs.amazon.com/sp-api/reference/listshipmentboxes) response. If these values do not match as required, the operation returns the `IncorrectPackageIdentifier` error code.
  number_of_pallets: 56, # Integer | The number of pallets in the shipment. This returns four identical labels for each pallet.
  page_size: 56, # Integer | The page size for paginating through the total packages' labels. This is a required parameter for Non-Partnered LTL Shipments. Max value:1000.
  page_start_index: 56 # Integer | The page start index for paginating through the total packages' labels. This is a required parameter for Non-Partnered LTL Shipments.
}

begin
  result = api_instance.get_labels(shipment_id, page_type, label_type, opts)
  p result
rescue AmzSpApi::FulfillmentInboundApiModelV0::ApiError => e
  puts "Exception when calling FbaInboundApi->get_labels: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **shipment_id** | **String**| A shipment identifier originally returned by the createInboundShipmentPlan operation. | 
 **page_type** | **String**| The page type to use to print the labels. Submitting a PageType value that is not supported in your marketplace returns an error. | 
 **label_type** | **String**| The type of labels requested.  | 
 **number_of_packages** | **Integer**| The number of packages in the shipment. | [optional] 
 **package_labels_to_print** | [**Array&lt;String&gt;**](String.md)| A list of identifiers that specify packages for which you want package labels printed.  If you provide box content information with the [FBA Inbound Shipment Carton Information Feed](https://developer-docs.amazon.com/sp-api/docs/fulfillment-by-amazon-feed-type-values#fba-inbound-shipment-carton-information-feed), then &#x60;PackageLabelsToPrint&#x60; must match the &#x60;CartonId&#x60; values you provide through that feed. If you provide box content information with the Fulfillment Inbound API v2024-03-20, then &#x60;PackageLabelsToPrint&#x60; must match the &#x60;boxID&#x60; values from the [&#x60;listShipmentBoxes&#x60;](https://developer-docs.amazon.com/sp-api/reference/listshipmentboxes) response. If these values do not match as required, the operation returns the &#x60;IncorrectPackageIdentifier&#x60; error code. | [optional] 
 **number_of_pallets** | **Integer**| The number of pallets in the shipment. This returns four identical labels for each pallet. | [optional] 
 **page_size** | **Integer**| The page size for paginating through the total packages&#x27; labels. This is a required parameter for Non-Partnered LTL Shipments. Max value:1000. | [optional] 
 **page_start_index** | **Integer**| The page start index for paginating through the total packages&#x27; labels. This is a required parameter for Non-Partnered LTL Shipments. | [optional] 

### Return type

[**GetLabelsResponse**](GetLabelsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_prep_instructions**
> GetPrepInstructionsResponse get_prep_instructions(ship_to_country_code, opts)



Returns labeling requirements and item preparation instructions to help prepare items for shipment to Amazon's fulfillment network.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 2 | 30 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values than those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'fulfillment-inbound-api-model-V0'

api_instance = AmzSpApi::FulfillmentInboundApiModelV0::FbaInboundApi.new
ship_to_country_code = 'ship_to_country_code_example' # String | The country code of the country to which the items will be shipped. Note that labeling requirements and item preparation instructions can vary by country.
opts = { 
  seller_sku_list: ['seller_sku_list_example'], # Array<String> | A list of SellerSKU values. Used to identify items for which you want labeling requirements and item preparation instructions for shipment to Amazon's fulfillment network. The SellerSKU is qualified by the Seller ID, which is included with every call to the Seller Partner API.  Note: Include seller SKUs that you have used to list items on Amazon's retail website. If you include a seller SKU that you have never used to list an item on Amazon's retail website, the seller SKU is returned in the InvalidSKUList property in the response.
  asin_list: ['asin_list_example'] # Array<String> | A list of ASIN values. Used to identify items for which you want item preparation instructions to help with item sourcing decisions.  Note: ASINs must be included in the product catalog for at least one of the marketplaces that the seller  participates in. Any ASIN that is not included in the product catalog for at least one of the marketplaces that the seller participates in is returned in the InvalidASINList property in the response. You can find out which marketplaces a seller participates in by calling the getMarketplaceParticipations operation in the Selling Partner API for Sellers.
}

begin
  result = api_instance.get_prep_instructions(ship_to_country_code, opts)
  p result
rescue AmzSpApi::FulfillmentInboundApiModelV0::ApiError => e
  puts "Exception when calling FbaInboundApi->get_prep_instructions: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ship_to_country_code** | **String**| The country code of the country to which the items will be shipped. Note that labeling requirements and item preparation instructions can vary by country. | 
 **seller_sku_list** | [**Array&lt;String&gt;**](String.md)| A list of SellerSKU values. Used to identify items for which you want labeling requirements and item preparation instructions for shipment to Amazon&#x27;s fulfillment network. The SellerSKU is qualified by the Seller ID, which is included with every call to the Seller Partner API.  Note: Include seller SKUs that you have used to list items on Amazon&#x27;s retail website. If you include a seller SKU that you have never used to list an item on Amazon&#x27;s retail website, the seller SKU is returned in the InvalidSKUList property in the response. | [optional] 
 **asin_list** | [**Array&lt;String&gt;**](String.md)| A list of ASIN values. Used to identify items for which you want item preparation instructions to help with item sourcing decisions.  Note: ASINs must be included in the product catalog for at least one of the marketplaces that the seller  participates in. Any ASIN that is not included in the product catalog for at least one of the marketplaces that the seller participates in is returned in the InvalidASINList property in the response. You can find out which marketplaces a seller participates in by calling the getMarketplaceParticipations operation in the Selling Partner API for Sellers. | [optional] 

### Return type

[**GetPrepInstructionsResponse**](GetPrepInstructionsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_shipment_items**
> GetShipmentItemsResponse get_shipment_items(query_type, marketplace_id, opts)



Returns a list of items in a specified inbound shipment, or a list of items that were updated within a specified time frame.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 2 | 30 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values than those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'fulfillment-inbound-api-model-V0'

api_instance = AmzSpApi::FulfillmentInboundApiModelV0::FbaInboundApi.new
query_type = 'query_type_example' # String | Indicates whether items are returned using a date range (by providing the LastUpdatedAfter and LastUpdatedBefore parameters), or using NextToken, which continues returning items specified in a previous request.
marketplace_id = 'marketplace_id_example' # String | A marketplace identifier. Specifies the marketplace where the product would be stored.
opts = { 
  last_updated_after: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | A date used for selecting inbound shipment items that were last updated after (or at) a specified time. The selection includes updates made by Amazon and by the seller.
  last_updated_before: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | A date used for selecting inbound shipment items that were last updated before (or at) a specified time. The selection includes updates made by Amazon and by the seller.
  next_token: 'next_token_example' # String | A string token returned in the response to your previous request.
}

begin
  result = api_instance.get_shipment_items(query_type, marketplace_id, opts)
  p result
rescue AmzSpApi::FulfillmentInboundApiModelV0::ApiError => e
  puts "Exception when calling FbaInboundApi->get_shipment_items: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query_type** | **String**| Indicates whether items are returned using a date range (by providing the LastUpdatedAfter and LastUpdatedBefore parameters), or using NextToken, which continues returning items specified in a previous request. | 
 **marketplace_id** | **String**| A marketplace identifier. Specifies the marketplace where the product would be stored. | 
 **last_updated_after** | **DateTime**| A date used for selecting inbound shipment items that were last updated after (or at) a specified time. The selection includes updates made by Amazon and by the seller. | [optional] 
 **last_updated_before** | **DateTime**| A date used for selecting inbound shipment items that were last updated before (or at) a specified time. The selection includes updates made by Amazon and by the seller. | [optional] 
 **next_token** | **String**| A string token returned in the response to your previous request. | [optional] 

### Return type

[**GetShipmentItemsResponse**](GetShipmentItemsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_shipment_items_by_shipment_id**
> GetShipmentItemsResponse get_shipment_items_by_shipment_id(shipment_id, opts)



Returns a list of items in a specified inbound shipment.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 2 | 30 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values than those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'fulfillment-inbound-api-model-V0'

api_instance = AmzSpApi::FulfillmentInboundApiModelV0::FbaInboundApi.new
shipment_id = 'shipment_id_example' # String | A shipment identifier used for selecting items in a specific inbound shipment.
opts = { 
  marketplace_id: 'marketplace_id_example' # String | Deprecated. Do not use.
}

begin
  result = api_instance.get_shipment_items_by_shipment_id(shipment_id, opts)
  p result
rescue AmzSpApi::FulfillmentInboundApiModelV0::ApiError => e
  puts "Exception when calling FbaInboundApi->get_shipment_items_by_shipment_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **shipment_id** | **String**| A shipment identifier used for selecting items in a specific inbound shipment. | 
 **marketplace_id** | **String**| Deprecated. Do not use. | [optional] 

### Return type

[**GetShipmentItemsResponse**](GetShipmentItemsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_shipments**
> GetShipmentsResponse get_shipments(query_type, marketplace_id, opts)



Returns a list of inbound shipments based on criteria that you specify.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 2 | 30 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values than those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'fulfillment-inbound-api-model-V0'

api_instance = AmzSpApi::FulfillmentInboundApiModelV0::FbaInboundApi.new
query_type = 'query_type_example' # String | Indicates whether shipments are returned using shipment information (by providing the ShipmentStatusList or ShipmentIdList parameters), using a date range (by providing the LastUpdatedAfter and LastUpdatedBefore parameters), or by using NextToken to continue returning items specified in a previous request.
marketplace_id = 'marketplace_id_example' # String | A marketplace identifier. Specifies the marketplace where the product would be stored.
opts = { 
  shipment_status_list: ['shipment_status_list_example'], # Array<String> | A list of ShipmentStatus values. Used to select shipments with a current status that matches the status values that you specify.
  shipment_id_list: ['shipment_id_list_example'], # Array<String> | A list of shipment IDs used to select the shipments that you want. If both ShipmentStatusList and ShipmentIdList are specified, only shipments that match both parameters are returned.
  last_updated_after: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | A date used for selecting inbound shipments that were last updated after (or at) a specified time. The selection includes updates made by Amazon and by the seller.
  last_updated_before: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | A date used for selecting inbound shipments that were last updated before (or at) a specified time. The selection includes updates made by Amazon and by the seller.
  next_token: 'next_token_example' # String | A string token returned in the response to your previous request.
}

begin
  result = api_instance.get_shipments(query_type, marketplace_id, opts)
  p result
rescue AmzSpApi::FulfillmentInboundApiModelV0::ApiError => e
  puts "Exception when calling FbaInboundApi->get_shipments: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query_type** | **String**| Indicates whether shipments are returned using shipment information (by providing the ShipmentStatusList or ShipmentIdList parameters), using a date range (by providing the LastUpdatedAfter and LastUpdatedBefore parameters), or by using NextToken to continue returning items specified in a previous request. | 
 **marketplace_id** | **String**| A marketplace identifier. Specifies the marketplace where the product would be stored. | 
 **shipment_status_list** | [**Array&lt;String&gt;**](String.md)| A list of ShipmentStatus values. Used to select shipments with a current status that matches the status values that you specify. | [optional] 
 **shipment_id_list** | [**Array&lt;String&gt;**](String.md)| A list of shipment IDs used to select the shipments that you want. If both ShipmentStatusList and ShipmentIdList are specified, only shipments that match both parameters are returned. | [optional] 
 **last_updated_after** | **DateTime**| A date used for selecting inbound shipments that were last updated after (or at) a specified time. The selection includes updates made by Amazon and by the seller. | [optional] 
 **last_updated_before** | **DateTime**| A date used for selecting inbound shipments that were last updated before (or at) a specified time. The selection includes updates made by Amazon and by the seller. | [optional] 
 **next_token** | **String**| A string token returned in the response to your previous request. | [optional] 

### Return type

[**GetShipmentsResponse**](GetShipmentsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



