# AmzSpApi::ServicesApiModel::AppointmentSlotReport

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**scheduling_type** | **String** | Defines the type of slots. | [optional] 
**start_time** | **DateTime** | Start Time from which the appointment slots are generated in ISO 8601 format. | [optional] 
**end_time** | **DateTime** | End Time up to which the appointment slots are generated in ISO 8601 format. | [optional] 
**appointment_slots** | [**Array&lt;AppointmentSlot&gt;**](AppointmentSlot.md) | A list of time windows along with associated capacity in which the service can be performed. | [optional] 

