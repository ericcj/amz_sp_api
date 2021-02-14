# AmzSpApi::SolicitationsApiModel::SolicitationsApi

All URIs are relative to *https://sellingpartnerapi-na.amazon.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_product_review_and_seller_feedback_solicitation**](SolicitationsApi.md#create_product_review_and_seller_feedback_solicitation) | **POST** /solicitations/v1/orders/{amazonOrderId}/solicitations/productReviewAndSellerFeedback | 
[**get_solicitation_actions_for_order**](SolicitationsApi.md#get_solicitation_actions_for_order) | **GET** /solicitations/v1/orders/{amazonOrderId} | 

# **create_product_review_and_seller_feedback_solicitation**
> CreateProductReviewAndSellerFeedbackSolicitationResponse create_product_review_and_seller_feedback_solicitation(amazon_order_id, marketplace_ids)



Sends a solicitation to a buyer asking for seller feedback and a product review for the specified order. Send only one productReviewAndSellerFeedback or free form proactive message per order.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 1 | 5 |  For more information, see \"Usage Plans and Rate Limits\" in the Selling Partner API documentation.

### Example
```ruby
# load the gem
require 'solicitations-api-model'

api_instance = AmzSpApi::SolicitationsApiModel::SolicitationsApi.new
amazon_order_id = 'amazon_order_id_example' # String | An Amazon order identifier. This specifies the order for which a solicitation is sent.
marketplace_ids = ['marketplace_ids_example'] # Array<String> | A marketplace identifier. This specifies the marketplace in which the order was placed. Only one marketplace can be specified.


begin
  result = api_instance.create_product_review_and_seller_feedback_solicitation(amazon_order_id, marketplace_ids)
  p result
rescue AmzSpApi::SolicitationsApiModel::ApiError => e
  puts "Exception when calling SolicitationsApi->create_product_review_and_seller_feedback_solicitation: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **amazon_order_id** | **String**| An Amazon order identifier. This specifies the order for which a solicitation is sent. | 
 **marketplace_ids** | [**Array&lt;String&gt;**](String.md)| A marketplace identifier. This specifies the marketplace in which the order was placed. Only one marketplace can be specified. | 

### Return type

[**CreateProductReviewAndSellerFeedbackSolicitationResponse**](CreateProductReviewAndSellerFeedbackSolicitationResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json



# **get_solicitation_actions_for_order**
> GetSolicitationActionsForOrderResponse get_solicitation_actions_for_order(amazon_order_id, marketplace_ids)



Returns a list of solicitation types that are available for an order that you specify. A solicitation type is represented by an actions object, which contains a path and query parameter(s). You can use the path and parameter(s) to call an operation that sends a solicitation. Currently only the productReviewAndSellerFeedbackSolicitation solicitation type is available.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 1 | 5 |  For more information, see \"Usage Plans and Rate Limits\" in the Selling Partner API documentation.

### Example
```ruby
# load the gem
require 'solicitations-api-model'

api_instance = AmzSpApi::SolicitationsApiModel::SolicitationsApi.new
amazon_order_id = 'amazon_order_id_example' # String | An Amazon order identifier. This specifies the order for which you want a list of available solicitation types.
marketplace_ids = ['marketplace_ids_example'] # Array<String> | A marketplace identifier. This specifies the marketplace in which the order was placed. Only one marketplace can be specified.


begin
  result = api_instance.get_solicitation_actions_for_order(amazon_order_id, marketplace_ids)
  p result
rescue AmzSpApi::SolicitationsApiModel::ApiError => e
  puts "Exception when calling SolicitationsApi->get_solicitation_actions_for_order: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **amazon_order_id** | **String**| An Amazon order identifier. This specifies the order for which you want a list of available solicitation types. | 
 **marketplace_ids** | [**Array&lt;String&gt;**](String.md)| A marketplace identifier. This specifies the marketplace in which the order was placed. Only one marketplace can be specified. | 

### Return type

[**GetSolicitationActionsForOrderResponse**](GetSolicitationActionsForOrderResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json



