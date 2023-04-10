# AmzSpApi::ServicesApiModel::ServiceApi

All URIs are relative to *https://sellingpartnerapi-na.amazon.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_appointment_for_service_job_by_service_job_id**](ServiceApi.md#add_appointment_for_service_job_by_service_job_id) | **POST** /service/v1/serviceJobs/{serviceJobId}/appointments | 
[**assign_appointment_resources**](ServiceApi.md#assign_appointment_resources) | **PUT** /service/v1/serviceJobs/{serviceJobId}/appointments/{appointmentId}/resources | 
[**cancel_reservation**](ServiceApi.md#cancel_reservation) | **DELETE** /service/v1/reservation/{reservationId} | 
[**cancel_service_job_by_service_job_id**](ServiceApi.md#cancel_service_job_by_service_job_id) | **PUT** /service/v1/serviceJobs/{serviceJobId}/cancellations | 
[**complete_service_job_by_service_job_id**](ServiceApi.md#complete_service_job_by_service_job_id) | **PUT** /service/v1/serviceJobs/{serviceJobId}/completions | 
[**create_reservation**](ServiceApi.md#create_reservation) | **POST** /service/v1/reservation | 
[**create_service_document_upload_destination**](ServiceApi.md#create_service_document_upload_destination) | **POST** /service/v1/documents | 
[**get_appointment_slots**](ServiceApi.md#get_appointment_slots) | **GET** /service/v1/appointmentSlots | 
[**get_appointmment_slots_by_job_id**](ServiceApi.md#get_appointmment_slots_by_job_id) | **GET** /service/v1/serviceJobs/{serviceJobId}/appointmentSlots | 
[**get_fixed_slot_capacity**](ServiceApi.md#get_fixed_slot_capacity) | **POST** /service/v1/serviceResources/{resourceId}/capacity/fixed | 
[**get_range_slot_capacity**](ServiceApi.md#get_range_slot_capacity) | **POST** /service/v1/serviceResources/{resourceId}/capacity/range | 
[**get_service_job_by_service_job_id**](ServiceApi.md#get_service_job_by_service_job_id) | **GET** /service/v1/serviceJobs/{serviceJobId} | 
[**get_service_jobs**](ServiceApi.md#get_service_jobs) | **GET** /service/v1/serviceJobs | 
[**reschedule_appointment_for_service_job_by_service_job_id**](ServiceApi.md#reschedule_appointment_for_service_job_by_service_job_id) | **POST** /service/v1/serviceJobs/{serviceJobId}/appointments/{appointmentId} | 
[**set_appointment_fulfillment_data**](ServiceApi.md#set_appointment_fulfillment_data) | **PUT** /service/v1/serviceJobs/{serviceJobId}/appointments/{appointmentId}/fulfillment | 
[**update_reservation**](ServiceApi.md#update_reservation) | **PUT** /service/v1/reservation/{reservationId} | 
[**update_schedule**](ServiceApi.md#update_schedule) | **PUT** /service/v1/serviceResources/{resourceId}/schedules | 

# **add_appointment_for_service_job_by_service_job_id**
> SetAppointmentResponse add_appointment_for_service_job_by_service_job_id(bodyservice_job_id)



Adds an appointment to the service job indicated by the service job identifier specified.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 5 | 20 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values than those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](doc:usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'services-api-model'

api_instance = AmzSpApi::ServicesApiModel::ServiceApi.new
body = AmzSpApi::ServicesApiModel::AddAppointmentRequest.new # AddAppointmentRequest | Add appointment operation input details.
service_job_id = 'service_job_id_example' # String | An Amazon defined service job identifier.


begin
  result = api_instance.add_appointment_for_service_job_by_service_job_id(bodyservice_job_id)
  p result
rescue AmzSpApi::ServicesApiModel::ApiError => e
  puts "Exception when calling ServiceApi->add_appointment_for_service_job_by_service_job_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**AddAppointmentRequest**](AddAppointmentRequest.md)| Add appointment operation input details. | 
 **service_job_id** | **String**| An Amazon defined service job identifier. | 

### Return type

[**SetAppointmentResponse**](SetAppointmentResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **assign_appointment_resources**
> AssignAppointmentResourcesResponse assign_appointment_resources(bodyservice_job_idappointment_id)



Assigns new resource(s) or overwrite/update the existing one(s) to a service job appointment.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 1 | 2 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values than those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](doc:usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'services-api-model'

api_instance = AmzSpApi::ServicesApiModel::ServiceApi.new
body = AmzSpApi::ServicesApiModel::AssignAppointmentResourcesRequest.new # AssignAppointmentResourcesRequest | 
service_job_id = 'service_job_id_example' # String | An Amazon-defined service job identifier. Get this value by calling the `getServiceJobs` operation of the Services API.
appointment_id = 'appointment_id_example' # String | An Amazon-defined identifier of active service job appointment.


begin
  result = api_instance.assign_appointment_resources(bodyservice_job_idappointment_id)
  p result
rescue AmzSpApi::ServicesApiModel::ApiError => e
  puts "Exception when calling ServiceApi->assign_appointment_resources: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**AssignAppointmentResourcesRequest**](AssignAppointmentResourcesRequest.md)|  | 
 **service_job_id** | **String**| An Amazon-defined service job identifier. Get this value by calling the &#x60;getServiceJobs&#x60; operation of the Services API. | 
 **appointment_id** | **String**| An Amazon-defined identifier of active service job appointment. | 

### Return type

[**AssignAppointmentResourcesResponse**](AssignAppointmentResourcesResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cancel_reservation**
> CancelReservationResponse cancel_reservation(reservation_id, marketplace_ids)



Cancel a reservation.   **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 5 | 20 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values than those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](doc:usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'services-api-model'

api_instance = AmzSpApi::ServicesApiModel::ServiceApi.new
reservation_id = 'reservation_id_example' # String | Reservation Identifier
marketplace_ids = ['marketplace_ids_example'] # Array<String> | An identifier for the marketplace in which the resource operates.


begin
  result = api_instance.cancel_reservation(reservation_id, marketplace_ids)
  p result
rescue AmzSpApi::ServicesApiModel::ApiError => e
  puts "Exception when calling ServiceApi->cancel_reservation: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **reservation_id** | **String**| Reservation Identifier | 
 **marketplace_ids** | [**Array&lt;String&gt;**](String.md)| An identifier for the marketplace in which the resource operates. | 

### Return type

[**CancelReservationResponse**](CancelReservationResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **cancel_service_job_by_service_job_id**
> CancelServiceJobByServiceJobIdResponse cancel_service_job_by_service_job_id(service_job_id, cancellation_reason_code)



Cancels the service job indicated by the service job identifier specified.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 5 | 20 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values than those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](doc:usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'services-api-model'

api_instance = AmzSpApi::ServicesApiModel::ServiceApi.new
service_job_id = 'service_job_id_example' # String | An Amazon defined service job identifier.
cancellation_reason_code = 'cancellation_reason_code_example' # String | A cancel reason code that specifies the reason for cancelling a service job.


begin
  result = api_instance.cancel_service_job_by_service_job_id(service_job_id, cancellation_reason_code)
  p result
rescue AmzSpApi::ServicesApiModel::ApiError => e
  puts "Exception when calling ServiceApi->cancel_service_job_by_service_job_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_job_id** | **String**| An Amazon defined service job identifier. | 
 **cancellation_reason_code** | **String**| A cancel reason code that specifies the reason for cancelling a service job. | 

### Return type

[**CancelServiceJobByServiceJobIdResponse**](CancelServiceJobByServiceJobIdResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **complete_service_job_by_service_job_id**
> CompleteServiceJobByServiceJobIdResponse complete_service_job_by_service_job_id(service_job_id)



Completes the service job indicated by the service job identifier specified.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 5 | 20 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values than those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](doc:usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'services-api-model'

api_instance = AmzSpApi::ServicesApiModel::ServiceApi.new
service_job_id = 'service_job_id_example' # String | An Amazon defined service job identifier.


begin
  result = api_instance.complete_service_job_by_service_job_id(service_job_id)
  p result
rescue AmzSpApi::ServicesApiModel::ApiError => e
  puts "Exception when calling ServiceApi->complete_service_job_by_service_job_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_job_id** | **String**| An Amazon defined service job identifier. | 

### Return type

[**CompleteServiceJobByServiceJobIdResponse**](CompleteServiceJobByServiceJobIdResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **create_reservation**
> CreateReservationResponse create_reservation(bodymarketplace_ids)



Create a reservation.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 5 | 20 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values than those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](doc:usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'services-api-model'

api_instance = AmzSpApi::ServicesApiModel::ServiceApi.new
body = AmzSpApi::ServicesApiModel::CreateReservationRequest.new # CreateReservationRequest | Reservation details
marketplace_ids = ['marketplace_ids_example'] # Array<String> | An identifier for the marketplace in which the resource operates.


begin
  result = api_instance.create_reservation(bodymarketplace_ids)
  p result
rescue AmzSpApi::ServicesApiModel::ApiError => e
  puts "Exception when calling ServiceApi->create_reservation: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateReservationRequest**](CreateReservationRequest.md)| Reservation details | 
 **marketplace_ids** | [**Array&lt;String&gt;**](String.md)| An identifier for the marketplace in which the resource operates. | 

### Return type

[**CreateReservationResponse**](CreateReservationResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_service_document_upload_destination**
> CreateServiceDocumentUploadDestination create_service_document_upload_destination(body)



Creates an upload destination.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 5 | 20 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values than those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](doc:usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'services-api-model'

api_instance = AmzSpApi::ServicesApiModel::ServiceApi.new
body = AmzSpApi::ServicesApiModel::ServiceUploadDocument.new # ServiceUploadDocument | Upload document operation input details.


begin
  result = api_instance.create_service_document_upload_destination(body)
  p result
rescue AmzSpApi::ServicesApiModel::ApiError => e
  puts "Exception when calling ServiceApi->create_service_document_upload_destination: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**ServiceUploadDocument**](ServiceUploadDocument.md)| Upload document operation input details. | 

### Return type

[**CreateServiceDocumentUploadDestination**](CreateServiceDocumentUploadDestination.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_appointment_slots**
> GetAppointmentSlotsResponse get_appointment_slots(asin, store_id, marketplace_ids, opts)



Gets appointment slots as per the service context specified.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 20 | 40 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values than those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](doc:usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'services-api-model'

api_instance = AmzSpApi::ServicesApiModel::ServiceApi.new
asin = 'asin_example' # String | ASIN associated with the service.
store_id = 'store_id_example' # String | Store identifier defining the region scope to retrive appointment slots.
marketplace_ids = ['marketplace_ids_example'] # Array<String> | An identifier for the marketplace for which appointment slots are queried
opts = { 
  start_time: 'start_time_example', # String | A time from which the appointment slots will be retrieved. The specified time must be in ISO 8601 format. If `startTime` is provided, `endTime` should also be provided. Default value is as per business configuration.
  end_time: 'end_time_example' # String | A time up to which the appointment slots will be retrieved. The specified time must be in ISO 8601 format. If `endTime` is provided, `startTime` should also be provided. Default value is as per business configuration. Maximum range of appointment slots can be 90 days.
}

begin
  result = api_instance.get_appointment_slots(asin, store_id, marketplace_ids, opts)
  p result
rescue AmzSpApi::ServicesApiModel::ApiError => e
  puts "Exception when calling ServiceApi->get_appointment_slots: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **asin** | **String**| ASIN associated with the service. | 
 **store_id** | **String**| Store identifier defining the region scope to retrive appointment slots. | 
 **marketplace_ids** | [**Array&lt;String&gt;**](String.md)| An identifier for the marketplace for which appointment slots are queried | 
 **start_time** | **String**| A time from which the appointment slots will be retrieved. The specified time must be in ISO 8601 format. If &#x60;startTime&#x60; is provided, &#x60;endTime&#x60; should also be provided. Default value is as per business configuration. | [optional] 
 **end_time** | **String**| A time up to which the appointment slots will be retrieved. The specified time must be in ISO 8601 format. If &#x60;endTime&#x60; is provided, &#x60;startTime&#x60; should also be provided. Default value is as per business configuration. Maximum range of appointment slots can be 90 days. | [optional] 

### Return type

[**GetAppointmentSlotsResponse**](GetAppointmentSlotsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_appointmment_slots_by_job_id**
> GetAppointmentSlotsResponse get_appointmment_slots_by_job_id(service_job_id, marketplace_ids, opts)



Gets appointment slots for the service associated with the service job id specified.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 5 | 20 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values than those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](doc:usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'services-api-model'

api_instance = AmzSpApi::ServicesApiModel::ServiceApi.new
service_job_id = 'service_job_id_example' # String | A service job identifier to retrive appointment slots for associated service.
marketplace_ids = ['marketplace_ids_example'] # Array<String> | An identifier for the marketplace in which the resource operates.
opts = { 
  start_time: 'start_time_example', # String | A time from which the appointment slots will be retrieved. The specified time must be in ISO 8601 format. If `startTime` is provided, `endTime` should also be provided. Default value is as per business configuration.
  end_time: 'end_time_example' # String | A time up to which the appointment slots will be retrieved. The specified time must be in ISO 8601 format. If `endTime` is provided, `startTime` should also be provided. Default value is as per business configuration. Maximum range of appointment slots can be 90 days.
}

begin
  result = api_instance.get_appointmment_slots_by_job_id(service_job_id, marketplace_ids, opts)
  p result
rescue AmzSpApi::ServicesApiModel::ApiError => e
  puts "Exception when calling ServiceApi->get_appointmment_slots_by_job_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_job_id** | **String**| A service job identifier to retrive appointment slots for associated service. | 
 **marketplace_ids** | [**Array&lt;String&gt;**](String.md)| An identifier for the marketplace in which the resource operates. | 
 **start_time** | **String**| A time from which the appointment slots will be retrieved. The specified time must be in ISO 8601 format. If &#x60;startTime&#x60; is provided, &#x60;endTime&#x60; should also be provided. Default value is as per business configuration. | [optional] 
 **end_time** | **String**| A time up to which the appointment slots will be retrieved. The specified time must be in ISO 8601 format. If &#x60;endTime&#x60; is provided, &#x60;startTime&#x60; should also be provided. Default value is as per business configuration. Maximum range of appointment slots can be 90 days. | [optional] 

### Return type

[**GetAppointmentSlotsResponse**](GetAppointmentSlotsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_fixed_slot_capacity**
> FixedSlotCapacity get_fixed_slot_capacity(bodymarketplace_idsresource_id, opts)



Provides capacity in fixed-size slots.   **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 5 | 20 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values than those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](doc:usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'services-api-model'

api_instance = AmzSpApi::ServicesApiModel::ServiceApi.new
body = AmzSpApi::ServicesApiModel::FixedSlotCapacityQuery.new # FixedSlotCapacityQuery | Request body.
marketplace_ids = ['marketplace_ids_example'] # Array<String> | An identifier for the marketplace in which the resource operates.
resource_id = 'resource_id_example' # String | Resource Identifier.
opts = { 
  next_page_token: 'next_page_token_example' # String | Next page token returned in the response of your previous request.
}

begin
  result = api_instance.get_fixed_slot_capacity(bodymarketplace_idsresource_id, opts)
  p result
rescue AmzSpApi::ServicesApiModel::ApiError => e
  puts "Exception when calling ServiceApi->get_fixed_slot_capacity: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**FixedSlotCapacityQuery**](FixedSlotCapacityQuery.md)| Request body. | 
 **marketplace_ids** | [**Array&lt;String&gt;**](String.md)| An identifier for the marketplace in which the resource operates. | 
 **resource_id** | **String**| Resource Identifier. | 
 **next_page_token** | **String**| Next page token returned in the response of your previous request. | [optional] 

### Return type

[**FixedSlotCapacity**](FixedSlotCapacity.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_range_slot_capacity**
> RangeSlotCapacity get_range_slot_capacity(bodymarketplace_idsresource_id, opts)



Provides capacity slots in a format similar to availability records.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 5 | 20 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values than those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](doc:usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'services-api-model'

api_instance = AmzSpApi::ServicesApiModel::ServiceApi.new
body = AmzSpApi::ServicesApiModel::RangeSlotCapacityQuery.new # RangeSlotCapacityQuery | Request body.
marketplace_ids = ['marketplace_ids_example'] # Array<String> | An identifier for the marketplace in which the resource operates.
resource_id = 'resource_id_example' # String | Resource Identifier.
opts = { 
  next_page_token: 'next_page_token_example' # String | Next page token returned in the response of your previous request.
}

begin
  result = api_instance.get_range_slot_capacity(bodymarketplace_idsresource_id, opts)
  p result
rescue AmzSpApi::ServicesApiModel::ApiError => e
  puts "Exception when calling ServiceApi->get_range_slot_capacity: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**RangeSlotCapacityQuery**](RangeSlotCapacityQuery.md)| Request body. | 
 **marketplace_ids** | [**Array&lt;String&gt;**](String.md)| An identifier for the marketplace in which the resource operates. | 
 **resource_id** | **String**| Resource Identifier. | 
 **next_page_token** | **String**| Next page token returned in the response of your previous request. | [optional] 

### Return type

[**RangeSlotCapacity**](RangeSlotCapacity.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_service_job_by_service_job_id**
> GetServiceJobByServiceJobIdResponse get_service_job_by_service_job_id(service_job_id)



Gets details of service job indicated by the provided `serviceJobID`.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 20 | 40 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values than those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](doc:usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'services-api-model'

api_instance = AmzSpApi::ServicesApiModel::ServiceApi.new
service_job_id = 'service_job_id_example' # String | A service job identifier.


begin
  result = api_instance.get_service_job_by_service_job_id(service_job_id)
  p result
rescue AmzSpApi::ServicesApiModel::ApiError => e
  puts "Exception when calling ServiceApi->get_service_job_by_service_job_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_job_id** | **String**| A service job identifier. | 

### Return type

[**GetServiceJobByServiceJobIdResponse**](GetServiceJobByServiceJobIdResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_service_jobs**
> GetServiceJobsResponse get_service_jobs(marketplace_ids, opts)



Gets service job details for the specified filter query.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 10 | 40 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values than those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](doc:usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'services-api-model'

api_instance = AmzSpApi::ServicesApiModel::ServiceApi.new
marketplace_ids = ['marketplace_ids_example'] # Array<String> | Used to select jobs that were placed in the specified marketplaces.
opts = { 
  service_order_ids: ['service_order_ids_example'], # Array<String> | List of service order ids for the query you want to perform.Max values supported 20.
  service_job_status: ['service_job_status_example'], # Array<String> | A list of one or more job status by which to filter the list of jobs.
  page_token: 'page_token_example', # String | String returned in the response of your previous request.
  page_size: 20, # Integer | A non-negative integer that indicates the maximum number of jobs to return in the list, Value must be 1 - 20. Default 20.
  sort_field: 'sort_field_example', # String | Sort fields on which you want to sort the output.
  sort_order: 'sort_order_example', # String | Sort order for the query you want to perform.
  created_after: 'created_after_example', # String | A date used for selecting jobs created at or after a specified time. Must be in ISO 8601 format. Required if `LastUpdatedAfter` is not specified. Specifying both `CreatedAfter` and `LastUpdatedAfter` returns an error.
  created_before: 'created_before_example', # String | A date used for selecting jobs created at or before a specified time. Must be in ISO 8601 format.
  last_updated_after: 'last_updated_after_example', # String | A date used for selecting jobs updated at or after a specified time. Must be in ISO 8601 format. Required if `createdAfter` is not specified. Specifying both `CreatedAfter` and `LastUpdatedAfter` returns an error.
  last_updated_before: 'last_updated_before_example', # String | A date used for selecting jobs updated at or before a specified time. Must be in ISO 8601 format.
  schedule_start_date: 'schedule_start_date_example', # String | A date used for filtering jobs schedules at or after a specified time. Must be in ISO 8601 format. Schedule end date should not be earlier than schedule start date.
  schedule_end_date: 'schedule_end_date_example', # String | A date used for filtering jobs schedules at or before a specified time. Must be in ISO 8601 format. Schedule end date should not be earlier than schedule start date.
  asins: ['asins_example'], # Array<String> | List of Amazon Standard Identification Numbers (ASIN) of the items. Max values supported is 20.
  required_skills: ['required_skills_example'], # Array<String> | A defined set of related knowledge, skills, experience, tools, materials, and work processes common to service delivery for a set of products and/or service scenarios. Max values supported is 20.
  store_ids: ['store_ids_example'] # Array<String> | List of Amazon-defined identifiers for the region scope. Max values supported is 50.
}

begin
  result = api_instance.get_service_jobs(marketplace_ids, opts)
  p result
rescue AmzSpApi::ServicesApiModel::ApiError => e
  puts "Exception when calling ServiceApi->get_service_jobs: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **marketplace_ids** | [**Array&lt;String&gt;**](String.md)| Used to select jobs that were placed in the specified marketplaces. | 
 **service_order_ids** | [**Array&lt;String&gt;**](String.md)| List of service order ids for the query you want to perform.Max values supported 20. | [optional] 
 **service_job_status** | [**Array&lt;String&gt;**](String.md)| A list of one or more job status by which to filter the list of jobs. | [optional] 
 **page_token** | **String**| String returned in the response of your previous request. | [optional] 
 **page_size** | **Integer**| A non-negative integer that indicates the maximum number of jobs to return in the list, Value must be 1 - 20. Default 20. | [optional] [default to 20]
 **sort_field** | **String**| Sort fields on which you want to sort the output. | [optional] 
 **sort_order** | **String**| Sort order for the query you want to perform. | [optional] 
 **created_after** | **String**| A date used for selecting jobs created at or after a specified time. Must be in ISO 8601 format. Required if &#x60;LastUpdatedAfter&#x60; is not specified. Specifying both &#x60;CreatedAfter&#x60; and &#x60;LastUpdatedAfter&#x60; returns an error. | [optional] 
 **created_before** | **String**| A date used for selecting jobs created at or before a specified time. Must be in ISO 8601 format. | [optional] 
 **last_updated_after** | **String**| A date used for selecting jobs updated at or after a specified time. Must be in ISO 8601 format. Required if &#x60;createdAfter&#x60; is not specified. Specifying both &#x60;CreatedAfter&#x60; and &#x60;LastUpdatedAfter&#x60; returns an error. | [optional] 
 **last_updated_before** | **String**| A date used for selecting jobs updated at or before a specified time. Must be in ISO 8601 format. | [optional] 
 **schedule_start_date** | **String**| A date used for filtering jobs schedules at or after a specified time. Must be in ISO 8601 format. Schedule end date should not be earlier than schedule start date. | [optional] 
 **schedule_end_date** | **String**| A date used for filtering jobs schedules at or before a specified time. Must be in ISO 8601 format. Schedule end date should not be earlier than schedule start date. | [optional] 
 **asins** | [**Array&lt;String&gt;**](String.md)| List of Amazon Standard Identification Numbers (ASIN) of the items. Max values supported is 20. | [optional] 
 **required_skills** | [**Array&lt;String&gt;**](String.md)| A defined set of related knowledge, skills, experience, tools, materials, and work processes common to service delivery for a set of products and/or service scenarios. Max values supported is 20. | [optional] 
 **store_ids** | [**Array&lt;String&gt;**](String.md)| List of Amazon-defined identifiers for the region scope. Max values supported is 50. | [optional] 

### Return type

[**GetServiceJobsResponse**](GetServiceJobsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **reschedule_appointment_for_service_job_by_service_job_id**
> SetAppointmentResponse reschedule_appointment_for_service_job_by_service_job_id(bodyservice_job_idappointment_id)



Reschedules an appointment for the service job indicated by the service job identifier specified.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 5 | 20 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values than those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](doc:usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'services-api-model'

api_instance = AmzSpApi::ServicesApiModel::ServiceApi.new
body = AmzSpApi::ServicesApiModel::RescheduleAppointmentRequest.new # RescheduleAppointmentRequest | Reschedule appointment operation input details.
service_job_id = 'service_job_id_example' # String | An Amazon defined service job identifier.
appointment_id = 'appointment_id_example' # String | An existing appointment identifier for the Service Job.


begin
  result = api_instance.reschedule_appointment_for_service_job_by_service_job_id(bodyservice_job_idappointment_id)
  p result
rescue AmzSpApi::ServicesApiModel::ApiError => e
  puts "Exception when calling ServiceApi->reschedule_appointment_for_service_job_by_service_job_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**RescheduleAppointmentRequest**](RescheduleAppointmentRequest.md)| Reschedule appointment operation input details. | 
 **service_job_id** | **String**| An Amazon defined service job identifier. | 
 **appointment_id** | **String**| An existing appointment identifier for the Service Job. | 

### Return type

[**SetAppointmentResponse**](SetAppointmentResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **set_appointment_fulfillment_data**
> String set_appointment_fulfillment_data(bodyservice_job_idappointment_id)



Updates the appointment fulfillment data related to a given `jobID` and `appointmentID`.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 5 | 20 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values than those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](doc:usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'services-api-model'

api_instance = AmzSpApi::ServicesApiModel::ServiceApi.new
body = AmzSpApi::ServicesApiModel::SetAppointmentFulfillmentDataRequest.new # SetAppointmentFulfillmentDataRequest | Appointment fulfillment data collection details.
service_job_id = 'service_job_id_example' # String | An Amazon-defined service job identifier. Get this value by calling the `getServiceJobs` operation of the Services API.
appointment_id = 'appointment_id_example' # String | An Amazon-defined identifier of active service job appointment.


begin
  result = api_instance.set_appointment_fulfillment_data(bodyservice_job_idappointment_id)
  p result
rescue AmzSpApi::ServicesApiModel::ApiError => e
  puts "Exception when calling ServiceApi->set_appointment_fulfillment_data: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SetAppointmentFulfillmentDataRequest**](SetAppointmentFulfillmentDataRequest.md)| Appointment fulfillment data collection details. | 
 **service_job_id** | **String**| An Amazon-defined service job identifier. Get this value by calling the &#x60;getServiceJobs&#x60; operation of the Services API. | 
 **appointment_id** | **String**| An Amazon-defined identifier of active service job appointment. | 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_reservation**
> UpdateReservationResponse update_reservation(bodymarketplace_idsreservation_id)



Update a reservation.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 5 | 20 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values than those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](doc:usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'services-api-model'

api_instance = AmzSpApi::ServicesApiModel::ServiceApi.new
body = AmzSpApi::ServicesApiModel::UpdateReservationRequest.new # UpdateReservationRequest | Reservation details
marketplace_ids = ['marketplace_ids_example'] # Array<String> | An identifier for the marketplace in which the resource operates.
reservation_id = 'reservation_id_example' # String | Reservation Identifier


begin
  result = api_instance.update_reservation(bodymarketplace_idsreservation_id)
  p result
rescue AmzSpApi::ServicesApiModel::ApiError => e
  puts "Exception when calling ServiceApi->update_reservation: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**UpdateReservationRequest**](UpdateReservationRequest.md)| Reservation details | 
 **marketplace_ids** | [**Array&lt;String&gt;**](String.md)| An identifier for the marketplace in which the resource operates. | 
 **reservation_id** | **String**| Reservation Identifier | 

### Return type

[**UpdateReservationResponse**](UpdateReservationResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_schedule**
> UpdateScheduleResponse update_schedule(bodymarketplace_idsresource_id)



Update the schedule of the given resource.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 5 | 20 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values than those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](doc:usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'services-api-model'

api_instance = AmzSpApi::ServicesApiModel::ServiceApi.new
body = AmzSpApi::ServicesApiModel::UpdateScheduleRequest.new # UpdateScheduleRequest | Schedule details
marketplace_ids = ['marketplace_ids_example'] # Array<String> | An identifier for the marketplace in which the resource operates.
resource_id = 'resource_id_example' # String | Resource (store) Identifier


begin
  result = api_instance.update_schedule(bodymarketplace_idsresource_id)
  p result
rescue AmzSpApi::ServicesApiModel::ApiError => e
  puts "Exception when calling ServiceApi->update_schedule: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**UpdateScheduleRequest**](UpdateScheduleRequest.md)| Schedule details | 
 **marketplace_ids** | [**Array&lt;String&gt;**](String.md)| An identifier for the marketplace in which the resource operates. | 
 **resource_id** | **String**| Resource (store) Identifier | 

### Return type

[**UpdateScheduleResponse**](UpdateScheduleResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



