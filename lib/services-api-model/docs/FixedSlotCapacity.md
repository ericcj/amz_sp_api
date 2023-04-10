# AmzSpApi::ServicesApiModel::FixedSlotCapacity

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**resource_id** | **String** | Resource Identifier. | [optional] 
**slot_duration** | [**BigDecimal**](BigDecimal.md) | The duration of each slot which is returned. This value will be a multiple of 5 and fall in the following range: 5 &lt;&#x3D; &#x60;slotDuration&#x60; &lt;&#x3D; 360. | [optional] 
**capacities** | [**Array&lt;FixedSlot&gt;**](FixedSlot.md) | Array of capacity slots in fixed slot format. | [optional] 
**next_page_token** | **String** | Next page token, if there are more pages. | [optional] 

