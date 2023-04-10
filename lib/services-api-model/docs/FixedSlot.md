# AmzSpApi::ServicesApiModel::FixedSlot

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**start_date_time** | **DateTime** | Start date time of slot in ISO 8601 format with precision of seconds. | [optional] 
**scheduled_capacity** | **Integer** | Scheduled capacity corresponding to the slot. This capacity represents the originally allocated capacity as per resource schedule. | [optional] 
**available_capacity** | **Integer** | Available capacity corresponding to the slot. This capacity represents the capacity available for allocation to reservations. | [optional] 
**encumbered_capacity** | **Integer** | Encumbered capacity corresponding to the slot. This capacity represents the capacity allocated for Amazon Jobs/Appointments/Orders. | [optional] 
**reserved_capacity** | **Integer** | Reserved capacity corresponding to the slot. This capacity represents the capacity made unavailable due to events like Breaks/Leaves/Lunch. | [optional] 

