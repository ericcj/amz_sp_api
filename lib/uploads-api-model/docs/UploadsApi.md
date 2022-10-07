# AmzSpApi::UploadsApiModel::UploadsApi

All URIs are relative to *https://sellingpartnerapi-na.amazon.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_upload_destination_for_resource**](UploadsApi.md#create_upload_destination_for_resource) | **POST** /uploads/2020-11-01/uploadDestinations/{resource} | 

# **create_upload_destination_for_resource**
> CreateUploadDestinationResponse create_upload_destination_for_resource(marketplace_ids, content_md5, resource, opts)



Creates an upload destination, returning the information required to upload a file to the destination and to programmatically access the file.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | .1 | 5 |  For more information, see \"Usage Plans and Rate Limits\" in the Selling Partner API documentation.

### Example
```ruby
# load the gem
require 'uploads-api-model'

api_instance = AmzSpApi::UploadsApiModel::UploadsApi.new
marketplace_ids = ['marketplace_ids_example'] # Array<String> | A list of marketplace identifiers. This specifies the marketplaces where the upload will be available. Only one marketplace can be specified.
content_md5 = 'content_md5_example' # String | An MD5 hash of the content to be submitted to the upload destination. This value is used to determine if the data has been corrupted or tampered with during transit.
resource = 'resource_example' # String | The resource for the upload destination that you are creating. For example, if you are creating an upload destination for the createLegalDisclosure operation of the Messaging API, the `{resource}` would be `/messaging/v1/orders/{amazonOrderId}/messages/legalDisclosure`, and the entire path would be `/uploads/2020-11-01/uploadDestinations/messaging/v1/orders/{amazonOrderId}/messages/legalDisclosure`. If you are creating an upload destination for an Aplus content document, the `{resource}` would be `aplus/2020-11-01/contentDocuments` and the path would be `/uploads/v1/uploadDestinations/aplus/2020-11-01/contentDocuments`.
opts = { 
  content_type: 'content_type_example' # String | The content type of the file to be uploaded.
}

begin
  result = api_instance.create_upload_destination_for_resource(marketplace_ids, content_md5, resource, opts)
  p result
rescue AmzSpApi::UploadsApiModel::ApiError => e
  puts "Exception when calling UploadsApi->create_upload_destination_for_resource: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **marketplace_ids** | [**Array&lt;String&gt;**](String.md)| A list of marketplace identifiers. This specifies the marketplaces where the upload will be available. Only one marketplace can be specified. | 
 **content_md5** | **String**| An MD5 hash of the content to be submitted to the upload destination. This value is used to determine if the data has been corrupted or tampered with during transit. | 
 **resource** | **String**| The resource for the upload destination that you are creating. For example, if you are creating an upload destination for the createLegalDisclosure operation of the Messaging API, the &#x60;{resource}&#x60; would be &#x60;/messaging/v1/orders/{amazonOrderId}/messages/legalDisclosure&#x60;, and the entire path would be &#x60;/uploads/2020-11-01/uploadDestinations/messaging/v1/orders/{amazonOrderId}/messages/legalDisclosure&#x60;. If you are creating an upload destination for an Aplus content document, the &#x60;{resource}&#x60; would be &#x60;aplus/2020-11-01/contentDocuments&#x60; and the path would be &#x60;/uploads/v1/uploadDestinations/aplus/2020-11-01/contentDocuments&#x60;. | 
 **content_type** | **String**| The content type of the file to be uploaded. | [optional] 

### Return type

[**CreateUploadDestinationResponse**](CreateUploadDestinationResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



