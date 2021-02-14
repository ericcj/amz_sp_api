# AmzSpApi::ServicesApiModel::ServiceApi

All URIs are relative to *https://sellingpartnerapi-na.amazon.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_appointment_for_service_job_by_service_job_id**](ServiceApi.md#add_appointment_for_service_job_by_service_job_id) | **POST** /service/v1/serviceJobs/{serviceJobId}/appointments | 
[**cancel_service_job_by_service_job_id**](ServiceApi.md#cancel_service_job_by_service_job_id) | **PUT** /service/v1/serviceJobs/{serviceJobId}/cancellations | 
[**complete_service_job_by_service_job_id**](ServiceApi.md#complete_service_job_by_service_job_id) | **PUT** /service/v1/serviceJobs/{serviceJobId}/completions | 
[**get_service_job_by_service_job_id**](ServiceApi.md#get_service_job_by_service_job_id) | **GET** /service/v1/serviceJobs/{serviceJobId} | 
[**get_service_jobs**](ServiceApi.md#get_service_jobs) | **GET** /service/v1/serviceJobs | 
[**reschedule_appointment_for_service_job_by_service_job_id**](ServiceApi.md#reschedule_appointment_for_service_job_by_service_job_id) | **POST** /service/v1/serviceJobs/{serviceJobId}/appointments/{appointmentId} | 

# **add_appointment_for_service_job_by_service_job_id**
> SetAppointmentResponse add_appointment_for_service_job_by_service_job_id(bodyservice_job_id)



Adds an appointment to the service job indicated by the service job identifier you specify.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 5 | 20 |  For more information, see \"Usage Plans and Rate Limits\" in the Selling Partner API documentation.

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



# **cancel_service_job_by_service_job_id**
> CancelServiceJobByServiceJobIdResponse cancel_service_job_by_service_job_id(service_job_id, cancellation_reason_code)



Cancels the service job indicated by the service job identifier you specify.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 5 | 20 |  For more information, see \"Usage Plans and Rate Limits\" in the Selling Partner API documentation.

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



Completes the service job indicated by the service job identifier you specify.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 5 | 20 |  For more information, see \"Usage Plans and Rate Limits\" in the Selling Partner API documentation.

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



# **get_service_job_by_service_job_id**
> GetServiceJobByServiceJobIdResponse get_service_job_by_service_job_id(service_job_id)



Gets service job details for the service job indicated by the service job identifier you specify.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 20 | 40 |  For more information, see \"Usage Plans and Rate Limits\" in the Selling Partner API documentation.

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



Gets service job details for the specified filter query.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 10 | 40 |  For more information, see \"Usage Plans and Rate Limits\" in the Selling Partner API documentation.

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
  created_after: 'created_after_example', # String | A date used for selecting jobs created after (or at) a specified time must be in ISO 8601 format. Required if LastUpdatedAfter is not specified.Specifying both CreatedAfter and LastUpdatedAfter returns an error. 
  created_before: 'created_before_example', # String | A date used for selecting jobs created before (or at) a specified time must be in ISO 8601 format. 
  last_updated_after: 'last_updated_after_example', # String | A date used for selecting jobs updated after (or at) a specified time must be in ISO 8601 format. Required if createdAfter is not specified.Specifying both CreatedAfter and LastUpdatedAfter returns an error. 
  last_updated_before: 'last_updated_before_example', # String | A date used for selecting jobs updated before (or at) a specified time must be in ISO 8601 format. 
  schedule_start_date: 'schedule_start_date_example', # String | A date used for filtering jobs schedule after (or at) a specified time must be in ISO 8601 format. schedule end date should not be earlier than schedule start date. 
  schedule_end_date: 'schedule_end_date_example' # String | A date used for filtering jobs schedule before (or at) a specified time must be in ISO 8601 format. schedule end date should not be earlier than schedule start date. 
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
 **marketplace_ids** | [**Array&lt;String&gt;**](String.md)| Used to select jobs that were placed in the specified marketplaces.  | 
 **service_order_ids** | [**Array&lt;String&gt;**](String.md)| List of service order ids for the query you want to perform.Max values supported 20.  | [optional] 
 **service_job_status** | [**Array&lt;String&gt;**](String.md)| A list of one or more job status by which to filter the list of jobs. | [optional] 
 **page_token** | **String**| String returned in the response of your previous request. | [optional] 
 **page_size** | **Integer**| A non-negative integer that indicates the maximum number of jobs to return in the list, Value must be 1 - 20. Default 20.  | [optional] [default to 20]
 **sort_field** | **String**| Sort fields on which you want to sort the output. | [optional] 
 **sort_order** | **String**| Sort order for the query you want to perform. | [optional] 
 **created_after** | **String**| A date used for selecting jobs created after (or at) a specified time must be in ISO 8601 format. Required if LastUpdatedAfter is not specified.Specifying both CreatedAfter and LastUpdatedAfter returns an error.  | [optional] 
 **created_before** | **String**| A date used for selecting jobs created before (or at) a specified time must be in ISO 8601 format.  | [optional] 
 **last_updated_after** | **String**| A date used for selecting jobs updated after (or at) a specified time must be in ISO 8601 format. Required if createdAfter is not specified.Specifying both CreatedAfter and LastUpdatedAfter returns an error.  | [optional] 
 **last_updated_before** | **String**| A date used for selecting jobs updated before (or at) a specified time must be in ISO 8601 format.  | [optional] 
 **schedule_start_date** | **String**| A date used for filtering jobs schedule after (or at) a specified time must be in ISO 8601 format. schedule end date should not be earlier than schedule start date.  | [optional] 
 **schedule_end_date** | **String**| A date used for filtering jobs schedule before (or at) a specified time must be in ISO 8601 format. schedule end date should not be earlier than schedule start date.  | [optional] 

### Return type

[**GetServiceJobsResponse**](GetServiceJobsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **reschedule_appointment_for_service_job_by_service_job_id**
> SetAppointmentResponse reschedule_appointment_for_service_job_by_service_job_id(bodyservice_job_idappointment_id)



Reschedules an appointment for the service job indicated by the service job identifier you specify.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 5 | 20 |  For more information, see \"Usage Plans and Rate Limits\" in the Selling Partner API documentation.

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



