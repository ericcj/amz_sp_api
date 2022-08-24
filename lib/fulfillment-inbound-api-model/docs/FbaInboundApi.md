# AmzSpApi::FulfillmentInboundApiModel::FbaInboundApi

All URIs are relative to *https://sellingpartnerapi-na.amazon.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**confirm_preorder**](FbaInboundApi.md#confirm_preorder) | **PUT** /fba/inbound/v0/shipments/{shipmentId}/preorder/confirm | 
[**confirm_transport**](FbaInboundApi.md#confirm_transport) | **POST** /fba/inbound/v0/shipments/{shipmentId}/transport/confirm | 
[**create_inbound_shipment**](FbaInboundApi.md#create_inbound_shipment) | **POST** /fba/inbound/v0/shipments/{shipmentId} | 
[**create_inbound_shipment_plan**](FbaInboundApi.md#create_inbound_shipment_plan) | **POST** /fba/inbound/v0/plans | 
[**estimate_transport**](FbaInboundApi.md#estimate_transport) | **POST** /fba/inbound/v0/shipments/{shipmentId}/transport/estimate | 
[**get_bill_of_lading**](FbaInboundApi.md#get_bill_of_lading) | **GET** /fba/inbound/v0/shipments/{shipmentId}/billOfLading | 
[**get_inbound_guidance**](FbaInboundApi.md#get_inbound_guidance) | **GET** /fba/inbound/v0/itemsGuidance | 
[**get_labels**](FbaInboundApi.md#get_labels) | **GET** /fba/inbound/v0/shipments/{shipmentId}/labels | 
[**get_preorder_info**](FbaInboundApi.md#get_preorder_info) | **GET** /fba/inbound/v0/shipments/{shipmentId}/preorder | 
[**get_prep_instructions**](FbaInboundApi.md#get_prep_instructions) | **GET** /fba/inbound/v0/prepInstructions | 
[**get_shipment_items**](FbaInboundApi.md#get_shipment_items) | **GET** /fba/inbound/v0/shipmentItems | 
[**get_shipment_items_by_shipment_id**](FbaInboundApi.md#get_shipment_items_by_shipment_id) | **GET** /fba/inbound/v0/shipments/{shipmentId}/items | 
[**get_shipments**](FbaInboundApi.md#get_shipments) | **GET** /fba/inbound/v0/shipments | 
[**get_transport_details**](FbaInboundApi.md#get_transport_details) | **GET** /fba/inbound/v0/shipments/{shipmentId}/transport | 
[**put_transport_details**](FbaInboundApi.md#put_transport_details) | **PUT** /fba/inbound/v0/shipments/{shipmentId}/transport | 
[**update_inbound_shipment**](FbaInboundApi.md#update_inbound_shipment) | **PUT** /fba/inbound/v0/shipments/{shipmentId} | 
[**void_transport**](FbaInboundApi.md#void_transport) | **POST** /fba/inbound/v0/shipments/{shipmentId}/transport/void | 

# **confirm_preorder**
> ConfirmPreorderResponse confirm_preorder(shipment_id, need_by_date, marketplace_id)



Returns information needed to confirm a shipment for pre-order. Call this operation after calling the getPreorderInfo operation to get the NeedByDate value and other pre-order information about the shipment.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 2 | 30 |  For more information, see \"Usage Plans and Rate Limits\" in the Selling Partner API documentation.

### Example
```ruby
# load the gem
require 'fulfillment-inbound-api-model'

api_instance = AmzSpApi::FulfillmentInboundApiModel::FbaInboundApi.new
shipment_id = 'shipment_id_example' # String | A shipment identifier originally returned by the createInboundShipmentPlan operation.
need_by_date = Date.parse('2013-10-20') # Date | Date that the shipment must arrive at the Amazon fulfillment center to avoid delivery promise breaks for pre-ordered items. Must be in YYYY-MM-DD format. The response to the getPreorderInfo operation returns this value.
marketplace_id = 'marketplace_id_example' # String | A marketplace identifier. Specifies the marketplace the shipment is tied to.


begin
  result = api_instance.confirm_preorder(shipment_id, need_by_date, marketplace_id)
  p result
rescue AmzSpApi::FulfillmentInboundApiModel::ApiError => e
  puts "Exception when calling FbaInboundApi->confirm_preorder: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **shipment_id** | **String**| A shipment identifier originally returned by the createInboundShipmentPlan operation. | 
 **need_by_date** | **Date**| Date that the shipment must arrive at the Amazon fulfillment center to avoid delivery promise breaks for pre-ordered items. Must be in YYYY-MM-DD format. The response to the getPreorderInfo operation returns this value. | 
 **marketplace_id** | **String**| A marketplace identifier. Specifies the marketplace the shipment is tied to. | 

### Return type

[**ConfirmPreorderResponse**](ConfirmPreorderResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **confirm_transport**
> ConfirmTransportResponse confirm_transport(shipment_id)



Confirms that the seller accepts the Amazon-partnered shipping estimate, agrees to allow Amazon to charge their account for the shipping cost, and requests that the Amazon-partnered carrier ship the inbound shipment.  Prior to calling the confirmTransport operation, you should call the getTransportDetails operation to get the Amazon-partnered shipping estimate.  Important: After confirming the transportation request, if the seller decides that they do not want the Amazon-partnered carrier to ship the inbound shipment, you can call the voidTransport operation to cancel the transportation request. Note that for a Small Parcel shipment, the seller has 24 hours after confirming a transportation request to void the transportation request. For a Less Than Truckload/Full Truckload (LTL/FTL) shipment, the seller has one hour after confirming a transportation request to void it. After the grace period has expired the seller's account will be charged for the shipping cost.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 2 | 30 |  For more information, see \"Usage Plans and Rate Limits\" in the Selling Partner API documentation.

### Example
```ruby
# load the gem
require 'fulfillment-inbound-api-model'

api_instance = AmzSpApi::FulfillmentInboundApiModel::FbaInboundApi.new
shipment_id = 'shipment_id_example' # String | A shipment identifier originally returned by the createInboundShipmentPlan operation.


begin
  result = api_instance.confirm_transport(shipment_id)
  p result
rescue AmzSpApi::FulfillmentInboundApiModel::ApiError => e
  puts "Exception when calling FbaInboundApi->confirm_transport: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **shipment_id** | **String**| A shipment identifier originally returned by the createInboundShipmentPlan operation. | 

### Return type

[**ConfirmTransportResponse**](ConfirmTransportResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **create_inbound_shipment**
> InboundShipmentResponse create_inbound_shipment(bodyshipment_id)



Returns a new inbound shipment based on the specified shipmentId that was returned by the createInboundShipmentPlan operation.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 2 | 30 |  For more information, see \"Usage Plans and Rate Limits\" in the Selling Partner API documentation.

### Example
```ruby
# load the gem
require 'fulfillment-inbound-api-model'

api_instance = AmzSpApi::FulfillmentInboundApiModel::FbaInboundApi.new
body = AmzSpApi::FulfillmentInboundApiModel::InboundShipmentRequest.new # InboundShipmentRequest | 
shipment_id = 'shipment_id_example' # String | A shipment identifier originally returned by the createInboundShipmentPlan operation.


begin
  result = api_instance.create_inbound_shipment(bodyshipment_id)
  p result
rescue AmzSpApi::FulfillmentInboundApiModel::ApiError => e
  puts "Exception when calling FbaInboundApi->create_inbound_shipment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**InboundShipmentRequest**](InboundShipmentRequest.md)|  | 
 **shipment_id** | **String**| A shipment identifier originally returned by the createInboundShipmentPlan operation. | 

### Return type

[**InboundShipmentResponse**](InboundShipmentResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_inbound_shipment_plan**
> CreateInboundShipmentPlanResponse create_inbound_shipment_plan(body)



Returns one or more inbound shipment plans, which provide the information you need to create one or more inbound shipments for a set of items that you specify. Multiple inbound shipment plans might be required so that items can be optimally placed in Amazon's fulfillment network—for example, positioning inventory closer to the customer. Alternatively, two inbound shipment plans might be created with the same Amazon fulfillment center destination if the two shipment plans require different processing—for example, items that require labels must be shipped separately from stickerless, commingled inventory.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 2 | 30 |  For more information, see \"Usage Plans and Rate Limits\" in the Selling Partner API documentation.

### Example
```ruby
# load the gem
require 'fulfillment-inbound-api-model'

api_instance = AmzSpApi::FulfillmentInboundApiModel::FbaInboundApi.new
body = AmzSpApi::FulfillmentInboundApiModel::CreateInboundShipmentPlanRequest.new # CreateInboundShipmentPlanRequest | 


begin
  result = api_instance.create_inbound_shipment_plan(body)
  p result
rescue AmzSpApi::FulfillmentInboundApiModel::ApiError => e
  puts "Exception when calling FbaInboundApi->create_inbound_shipment_plan: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateInboundShipmentPlanRequest**](CreateInboundShipmentPlanRequest.md)|  | 

### Return type

[**CreateInboundShipmentPlanResponse**](CreateInboundShipmentPlanResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **estimate_transport**
> EstimateTransportResponse estimate_transport(shipment_id)



Initiates the process of estimating the shipping cost for an inbound shipment by an Amazon-partnered carrier.  Prior to calling the estimateTransport operation, you must call the putTransportDetails operation to provide Amazon with the transportation information for the inbound shipment.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 2 | 30 |  For more information, see \"Usage Plans and Rate Limits\" in the Selling Partner API documentation.

### Example
```ruby
# load the gem
require 'fulfillment-inbound-api-model'

api_instance = AmzSpApi::FulfillmentInboundApiModel::FbaInboundApi.new
shipment_id = 'shipment_id_example' # String | A shipment identifier originally returned by the createInboundShipmentPlan operation.


begin
  result = api_instance.estimate_transport(shipment_id)
  p result
rescue AmzSpApi::FulfillmentInboundApiModel::ApiError => e
  puts "Exception when calling FbaInboundApi->estimate_transport: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **shipment_id** | **String**| A shipment identifier originally returned by the createInboundShipmentPlan operation. | 

### Return type

[**EstimateTransportResponse**](EstimateTransportResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_bill_of_lading**
> GetBillOfLadingResponse get_bill_of_lading(shipment_id)



Returns a bill of lading for a Less Than Truckload/Full Truckload (LTL/FTL) shipment. The getBillOfLading operation returns PDF document data for printing a bill of lading for an Amazon-partnered Less Than Truckload/Full Truckload (LTL/FTL) inbound shipment.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 2 | 30 |  For more information, see \"Usage Plans and Rate Limits\" in the Selling Partner API documentation.

### Example
```ruby
# load the gem
require 'fulfillment-inbound-api-model'

api_instance = AmzSpApi::FulfillmentInboundApiModel::FbaInboundApi.new
shipment_id = 'shipment_id_example' # String | A shipment identifier originally returned by the createInboundShipmentPlan operation.


begin
  result = api_instance.get_bill_of_lading(shipment_id)
  p result
rescue AmzSpApi::FulfillmentInboundApiModel::ApiError => e
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



# **get_inbound_guidance**
> GetInboundGuidanceResponse get_inbound_guidance(marketplace_id, opts)



Returns information that lets a seller know if Amazon recommends sending an item to a given marketplace. In some cases, Amazon provides guidance for why a given SellerSKU or ASIN is not recommended for shipment to Amazon's fulfillment network. Sellers may still ship items that are not recommended, at their discretion.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 2 | 30 |  For more information, see \"Usage Plans and Rate Limits\" in the Selling Partner API documentation.

### Example
```ruby
# load the gem
require 'fulfillment-inbound-api-model'

api_instance = AmzSpApi::FulfillmentInboundApiModel::FbaInboundApi.new
marketplace_id = 'marketplace_id_example' # String | A marketplace identifier. Specifies the marketplace where the product would be stored.
opts = { 
  seller_sku_list: ['seller_sku_list_example'], # Array<String> | A list of SellerSKU values. Used to identify items for which you want inbound guidance for shipment to Amazon's fulfillment network. Note: SellerSKU is qualified by the SellerId, which is included with every Selling Partner API operation that you submit. If you specify a SellerSKU that identifies a variation parent ASIN, this operation returns an error. A variation parent ASIN represents a generic product that cannot be sold. Variation child ASINs represent products that have specific characteristics (such as size and color) and can be sold. 
  asin_list: ['asin_list_example'] # Array<String> | A list of ASIN values. Used to identify items for which you want inbound guidance for shipment to Amazon's fulfillment network. Note: If you specify a ASIN that identifies a variation parent ASIN, this operation returns an error. A variation parent ASIN represents a generic product that cannot be sold. Variation child ASINs represent products that have specific characteristics (such as size and color) and can be sold.
}

begin
  result = api_instance.get_inbound_guidance(marketplace_id, opts)
  p result
rescue AmzSpApi::FulfillmentInboundApiModel::ApiError => e
  puts "Exception when calling FbaInboundApi->get_inbound_guidance: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **marketplace_id** | **String**| A marketplace identifier. Specifies the marketplace where the product would be stored. | 
 **seller_sku_list** | [**Array&lt;String&gt;**](String.md)| A list of SellerSKU values. Used to identify items for which you want inbound guidance for shipment to Amazon&#x27;s fulfillment network. Note: SellerSKU is qualified by the SellerId, which is included with every Selling Partner API operation that you submit. If you specify a SellerSKU that identifies a variation parent ASIN, this operation returns an error. A variation parent ASIN represents a generic product that cannot be sold. Variation child ASINs represent products that have specific characteristics (such as size and color) and can be sold.  | [optional] 
 **asin_list** | [**Array&lt;String&gt;**](String.md)| A list of ASIN values. Used to identify items for which you want inbound guidance for shipment to Amazon&#x27;s fulfillment network. Note: If you specify a ASIN that identifies a variation parent ASIN, this operation returns an error. A variation parent ASIN represents a generic product that cannot be sold. Variation child ASINs represent products that have specific characteristics (such as size and color) and can be sold. | [optional] 

### Return type

[**GetInboundGuidanceResponse**](GetInboundGuidanceResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_labels**
> GetLabelsResponse get_labels(shipment_id, page_type, label_type, opts)



Returns package/pallet labels for faster and more accurate shipment processing at the Amazon fulfillment center.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 2 | 30 |  For more information, see \"Usage Plans and Rate Limits\" in the Selling Partner API documentation.

### Example
```ruby
# load the gem
require 'fulfillment-inbound-api-model'

api_instance = AmzSpApi::FulfillmentInboundApiModel::FbaInboundApi.new
shipment_id = 'shipment_id_example' # String | A shipment identifier originally returned by the createInboundShipmentPlan operation.
page_type = 'page_type_example' # String | The page type to use to print the labels. Submitting a PageType value that is not supported in your marketplace returns an error.
label_type = 'label_type_example' # String | The type of labels requested. 
opts = { 
  number_of_packages: 56, # Integer | The number of packages in the shipment.
  package_labels_to_print: ['package_labels_to_print_example'], # Array<String> | A list of identifiers that specify packages for which you want package labels printed.  Must match CartonId values previously passed using the FBA Inbound Shipment Carton Information Feed. If not, the operation returns the IncorrectPackageIdentifier error code.
  number_of_pallets: 56, # Integer | The number of pallets in the shipment. This returns four identical labels for each pallet.
  page_size: 56, # Integer | The page size for paginating through the total packages' labels. This is a required parameter for Non-Partnered LTL Shipments. Max value:1000.
  page_start_index: 56 # Integer | The page start index for paginating through the total packages' labels. This is a required parameter for Non-Partnered LTL Shipments.
}

begin
  result = api_instance.get_labels(shipment_id, page_type, label_type, opts)
  p result
rescue AmzSpApi::FulfillmentInboundApiModel::ApiError => e
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
 **package_labels_to_print** | [**Array&lt;String&gt;**](String.md)| A list of identifiers that specify packages for which you want package labels printed.  Must match CartonId values previously passed using the FBA Inbound Shipment Carton Information Feed. If not, the operation returns the IncorrectPackageIdentifier error code. | [optional] 
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



# **get_preorder_info**
> GetPreorderInfoResponse get_preorder_info(shipment_id, marketplace_id)



Returns pre-order information, including dates, that a seller needs before confirming a shipment for pre-order.   **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 2 | 30 |  For more information, see \"Usage Plans and Rate Limits\" in the Selling Partner API documentation.

### Example
```ruby
# load the gem
require 'fulfillment-inbound-api-model'

api_instance = AmzSpApi::FulfillmentInboundApiModel::FbaInboundApi.new
shipment_id = 'shipment_id_example' # String | A shipment identifier originally returned by the createInboundShipmentPlan operation.
marketplace_id = 'marketplace_id_example' # String | A marketplace identifier. Specifies the marketplace the shipment is tied to.


begin
  result = api_instance.get_preorder_info(shipment_id, marketplace_id)
  p result
rescue AmzSpApi::FulfillmentInboundApiModel::ApiError => e
  puts "Exception when calling FbaInboundApi->get_preorder_info: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **shipment_id** | **String**| A shipment identifier originally returned by the createInboundShipmentPlan operation. | 
 **marketplace_id** | **String**| A marketplace identifier. Specifies the marketplace the shipment is tied to. | 

### Return type

[**GetPreorderInfoResponse**](GetPreorderInfoResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_prep_instructions**
> GetPrepInstructionsResponse get_prep_instructions(ship_to_country_code, opts)



Returns labeling requirements and item preparation instructions to help prepare items for shipment to Amazon's fulfillment network.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 2 | 30 |  For more information, see \"Usage Plans and Rate Limits\" in the Selling Partner API documentation.

### Example
```ruby
# load the gem
require 'fulfillment-inbound-api-model'

api_instance = AmzSpApi::FulfillmentInboundApiModel::FbaInboundApi.new
ship_to_country_code = 'ship_to_country_code_example' # String | The country code of the country to which the items will be shipped. Note that labeling requirements and item preparation instructions can vary by country.
opts = { 
  seller_sku_list: ['seller_sku_list_example'], # Array<String> | A list of SellerSKU values. Used to identify items for which you want labeling requirements and item preparation instructions for shipment to Amazon's fulfillment network. The SellerSKU is qualified by the Seller ID, which is included with every call to the Seller Partner API.  Note: Include seller SKUs that you have used to list items on Amazon's retail website. If you include a seller SKU that you have never used to list an item on Amazon's retail website, the seller SKU is returned in the InvalidSKUList property in the response.
  asin_list: ['asin_list_example'] # Array<String> | A list of ASIN values. Used to identify items for which you want item preparation instructions to help with item sourcing decisions.  Note: ASINs must be included in the product catalog for at least one of the marketplaces that the seller  participates in. Any ASIN that is not included in the product catalog for at least one of the marketplaces that the seller participates in is returned in the InvalidASINList property in the response. You can find out which marketplaces a seller participates in by calling the getMarketplaceParticipations operation in the Selling Partner API for Sellers.
}

begin
  result = api_instance.get_prep_instructions(ship_to_country_code, opts)
  p result
rescue AmzSpApi::FulfillmentInboundApiModel::ApiError => e
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



Returns a list of items in a specified inbound shipment, or a list of items that were updated within a specified time frame.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 2 | 30 |  For more information, see \"Usage Plans and Rate Limits\" in the Selling Partner API documentation.

### Example
```ruby
# load the gem
require 'fulfillment-inbound-api-model'

api_instance = AmzSpApi::FulfillmentInboundApiModel::FbaInboundApi.new
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
rescue AmzSpApi::FulfillmentInboundApiModel::ApiError => e
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
> GetShipmentItemsResponse get_shipment_items_by_shipment_id(shipment_id, marketplace_id)



Returns a list of items in a specified inbound shipment.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 2 | 30 |  For more information, see \"Usage Plans and Rate Limits\" in the Selling Partner API documentation.

### Example
```ruby
# load the gem
require 'fulfillment-inbound-api-model'

api_instance = AmzSpApi::FulfillmentInboundApiModel::FbaInboundApi.new
shipment_id = 'shipment_id_example' # String | A shipment identifier used for selecting items in a specific inbound shipment.
marketplace_id = 'marketplace_id_example' # String | A marketplace identifier. Specifies the marketplace where the product would be stored.


begin
  result = api_instance.get_shipment_items_by_shipment_id(shipment_id, marketplace_id)
  p result
rescue AmzSpApi::FulfillmentInboundApiModel::ApiError => e
  puts "Exception when calling FbaInboundApi->get_shipment_items_by_shipment_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **shipment_id** | **String**| A shipment identifier used for selecting items in a specific inbound shipment. | 
 **marketplace_id** | **String**| A marketplace identifier. Specifies the marketplace where the product would be stored. | 

### Return type

[**GetShipmentItemsResponse**](GetShipmentItemsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_shipments**
> GetShipmentsResponse get_shipments(query_type, marketplace_id, opts)



Returns a list of inbound shipments based on criteria that you specify.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 2 | 30 |  For more information, see \"Usage Plans and Rate Limits\" in the Selling Partner API documentation.

### Example
```ruby
# load the gem
require 'fulfillment-inbound-api-model'

api_instance = AmzSpApi::FulfillmentInboundApiModel::FbaInboundApi.new
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
rescue AmzSpApi::FulfillmentInboundApiModel::ApiError => e
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



# **get_transport_details**
> GetTransportDetailsResponse get_transport_details(shipment_id)



Returns current transportation information about an inbound shipment.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 2 | 30 |  For more information, see \"Usage Plans and Rate Limits\" in the Selling Partner API documentation.

### Example
```ruby
# load the gem
require 'fulfillment-inbound-api-model'

api_instance = AmzSpApi::FulfillmentInboundApiModel::FbaInboundApi.new
shipment_id = 'shipment_id_example' # String | A shipment identifier originally returned by the createInboundShipmentPlan operation.


begin
  result = api_instance.get_transport_details(shipment_id)
  p result
rescue AmzSpApi::FulfillmentInboundApiModel::ApiError => e
  puts "Exception when calling FbaInboundApi->get_transport_details: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **shipment_id** | **String**| A shipment identifier originally returned by the createInboundShipmentPlan operation. | 

### Return type

[**GetTransportDetailsResponse**](GetTransportDetailsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **put_transport_details**
> PutTransportDetailsResponse put_transport_details(bodyshipment_id)



Sends transportation information to Amazon about an inbound shipment.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 2 | 30 |  For more information, see \"Usage Plans and Rate Limits\" in the Selling Partner API documentation.

### Example
```ruby
# load the gem
require 'fulfillment-inbound-api-model'

api_instance = AmzSpApi::FulfillmentInboundApiModel::FbaInboundApi.new
body = AmzSpApi::FulfillmentInboundApiModel::PutTransportDetailsRequest.new # PutTransportDetailsRequest | 
shipment_id = 'shipment_id_example' # String | A shipment identifier originally returned by the createInboundShipmentPlan operation.


begin
  result = api_instance.put_transport_details(bodyshipment_id)
  p result
rescue AmzSpApi::FulfillmentInboundApiModel::ApiError => e
  puts "Exception when calling FbaInboundApi->put_transport_details: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**PutTransportDetailsRequest**](PutTransportDetailsRequest.md)|  | 
 **shipment_id** | **String**| A shipment identifier originally returned by the createInboundShipmentPlan operation. | 

### Return type

[**PutTransportDetailsResponse**](PutTransportDetailsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_inbound_shipment**
> InboundShipmentResponse update_inbound_shipment(bodyshipment_id)



Updates or removes items from the inbound shipment identified by the specified shipment identifier. Adding new items is not supported.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 2 | 30 |  For more information, see \"Usage Plans and Rate Limits\" in the Selling Partner API documentation.

### Example
```ruby
# load the gem
require 'fulfillment-inbound-api-model'

api_instance = AmzSpApi::FulfillmentInboundApiModel::FbaInboundApi.new
body = AmzSpApi::FulfillmentInboundApiModel::InboundShipmentRequest.new # InboundShipmentRequest | 
shipment_id = 'shipment_id_example' # String | A shipment identifier originally returned by the createInboundShipmentPlan operation.


begin
  result = api_instance.update_inbound_shipment(bodyshipment_id)
  p result
rescue AmzSpApi::FulfillmentInboundApiModel::ApiError => e
  puts "Exception when calling FbaInboundApi->update_inbound_shipment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**InboundShipmentRequest**](InboundShipmentRequest.md)|  | 
 **shipment_id** | **String**| A shipment identifier originally returned by the createInboundShipmentPlan operation. | 

### Return type

[**InboundShipmentResponse**](InboundShipmentResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **void_transport**
> VoidTransportResponse void_transport(shipment_id)



Cancels a previously-confirmed request to ship an inbound shipment using an Amazon-partnered carrier.  To be successful, you must call this operation before the VoidDeadline date that is returned by the getTransportDetails operation.  Important: The VoidDeadline date is 24 hours after you confirm a Small Parcel shipment transportation request or one hour after you confirm a Less Than Truckload/Full Truckload (LTL/FTL) shipment transportation request. After the void deadline passes, your account will be charged for the shipping cost.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 2 | 30 |  For more information, see \"Usage Plans and Rate Limits\" in the Selling Partner API documentation.

### Example
```ruby
# load the gem
require 'fulfillment-inbound-api-model'

api_instance = AmzSpApi::FulfillmentInboundApiModel::FbaInboundApi.new
shipment_id = 'shipment_id_example' # String | A shipment identifier originally returned by the createInboundShipmentPlan operation.


begin
  result = api_instance.void_transport(shipment_id)
  p result
rescue AmzSpApi::FulfillmentInboundApiModel::ApiError => e
  puts "Exception when calling FbaInboundApi->void_transport: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **shipment_id** | **String**| A shipment identifier originally returned by the createInboundShipmentPlan operation. | 

### Return type

[**VoidTransportResponse**](VoidTransportResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



