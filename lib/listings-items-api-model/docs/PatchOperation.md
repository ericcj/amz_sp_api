# AmzSpApi::ListingsItemsApiModel::PatchOperation

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**op** | **String** | Type of JSON Patch operation. Supported JSON Patch operations include &#x60;add&#x60;, &#x60;replace&#x60;, &#x60;merge&#x60; and &#x60;delete&#x60;. Refer to &lt;https://tools.ietf.org/html/rfc6902&gt;. | 
**path** | **String** | JSON Pointer path of the element to patch. Refer to [JavaScript Object Notation (JSON) Patch](https://tools.ietf.org/html/rfc6902) for more information. | 
**value** | **Array&lt;Hash&gt;** | JSON value to &#x60;add&#x60;, &#x60;replace&#x60;, &#x60;merge&#x60; or &#x60;delete&#x60;. | [optional] 

