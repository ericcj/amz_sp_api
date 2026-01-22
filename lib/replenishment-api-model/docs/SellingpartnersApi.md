# AmzSpApi::ReplenishmentApiModel::SellingpartnersApi

All URIs are relative to *https://sellingpartnerapi-na.amazon.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_selling_partner_metrics**](SellingpartnersApi.md#get_selling_partner_metrics) | **POST** /replenishment/2022-11-07/sellingPartners/metrics/search | 

# **get_selling_partner_metrics**
> GetSellingPartnerMetricsResponse get_selling_partner_metrics(opts)



Returns aggregated replenishment program metrics for a selling partner.   **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 1 | 1 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values than those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'replenishment-api-model'

api_instance = AmzSpApi::ReplenishmentApiModel::SellingpartnersApi.new
opts = { 
  body: AmzSpApi::ReplenishmentApiModel::GetSellingPartnerMetricsRequest.new # GetSellingPartnerMetricsRequest | The request body for the `getSellingPartnerMetrics` operation.
}

begin
  result = api_instance.get_selling_partner_metrics(opts)
  p result
rescue AmzSpApi::ReplenishmentApiModel::ApiError => e
  puts "Exception when calling SellingpartnersApi->get_selling_partner_metrics: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**GetSellingPartnerMetricsRequest**](GetSellingPartnerMetricsRequest.md)| The request body for the &#x60;getSellingPartnerMetrics&#x60; operation. | [optional] 

### Return type

[**GetSellingPartnerMetricsResponse**](GetSellingPartnerMetricsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



