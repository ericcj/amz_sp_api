=begin
#Selling Partner API for Finances

#The Selling Partner API for Finances helps you obtain financial information relevant to a seller's business. You can obtain financial events for a given order, financial event group, or date range without having to wait until a statement period closes. You can also obtain financial event groups for a given date range.

OpenAPI spec version: v0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.46
=end

module AmzSpApi::FinancesApiModel
  class DefaultApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Returns financial event groups for a given date range. It may take up to 48 hours for orders to appear in your financial events.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 0.5 | 30 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values than those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :max_results_per_page The maximum number of results to return per page. If the response exceeds the maximum number of transactions or 10 MB, the API responds with &#x27;InvalidInput&#x27;. (default to 100)
    # @option opts [DateTime] :financial_event_group_started_before A date used for selecting financial event groups that opened before (but not at) a specified date and time, in ISO 8601 format. The date-time  must be later than FinancialEventGroupStartedAfter and no later than two minutes before the request was submitted. If FinancialEventGroupStartedAfter and FinancialEventGroupStartedBefore are more than 180 days apart, no financial event groups are returned.
    # @option opts [DateTime] :financial_event_group_started_after A date used for selecting financial event groups that opened after (or at) a specified date and time, in ISO 8601 format. The date-time must be no later than two minutes before the request was submitted.
    # @option opts [String] :next_token A string token returned in the response of your previous request.
    # @return [ListFinancialEventGroupsResponse]
    def list_financial_event_groups(opts = {})
      data, _status_code, _headers = list_financial_event_groups_with_http_info(opts)
      data
    end

    # Returns financial event groups for a given date range. It may take up to 48 hours for orders to appear in your financial events.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 0.5 | 30 |  The &#x60;x-amzn-RateLimit-Limit&#x60; response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values than those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :max_results_per_page The maximum number of results to return per page. If the response exceeds the maximum number of transactions or 10 MB, the API responds with &#x27;InvalidInput&#x27;.
    # @option opts [DateTime] :financial_event_group_started_before A date used for selecting financial event groups that opened before (but not at) a specified date and time, in ISO 8601 format. The date-time  must be later than FinancialEventGroupStartedAfter and no later than two minutes before the request was submitted. If FinancialEventGroupStartedAfter and FinancialEventGroupStartedBefore are more than 180 days apart, no financial event groups are returned.
    # @option opts [DateTime] :financial_event_group_started_after A date used for selecting financial event groups that opened after (or at) a specified date and time, in ISO 8601 format. The date-time must be no later than two minutes before the request was submitted.
    # @option opts [String] :next_token A string token returned in the response of your previous request.
    # @return [Array<(ListFinancialEventGroupsResponse, Integer, Hash)>] ListFinancialEventGroupsResponse data, response status code and response headers
    def list_financial_event_groups_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DefaultApi.list_financial_event_groups ...'
      end
      # resource path
      local_var_path = '/finances/v0/financialEventGroups'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'MaxResultsPerPage'] = opts[:'max_results_per_page'] if !opts[:'max_results_per_page'].nil?
      query_params[:'FinancialEventGroupStartedBefore'] = opts[:'financial_event_group_started_before'] if !opts[:'financial_event_group_started_before'].nil?
      query_params[:'FinancialEventGroupStartedAfter'] = opts[:'financial_event_group_started_after'] if !opts[:'financial_event_group_started_after'].nil?
      query_params[:'NextToken'] = opts[:'next_token'] if !opts[:'next_token'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'ListFinancialEventGroupsResponse' 

      auth_names = opts[:auth_names] || []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DefaultApi#list_financial_event_groups\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Returns financial events for the specified data range. It may take up to 48 hours for orders to appear in your financial events.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 0.5 | 30 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values than those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :max_results_per_page The maximum number of results to return per page. If the response exceeds the maximum number of transactions or 10 MB, the API responds with &#x27;InvalidInput&#x27;. (default to 100)
    # @option opts [DateTime] :posted_after A date used for selecting financial events posted after (or at) a specified time. The date-time must be no later than two minutes before the request was submitted, in ISO 8601 date time format.
    # @option opts [DateTime] :posted_before A date used for selecting financial events posted before (but not at) a specified time. The date-time must be later than PostedAfter and no later than two minutes before the request was submitted, in ISO 8601 date time format. If PostedAfter and PostedBefore are more than 180 days apart, no financial events are returned. You must specify the PostedAfter parameter if you specify the PostedBefore parameter. Default: Now minus two minutes.
    # @option opts [String] :next_token A string token returned in the response of your previous request.
    # @return [ListFinancialEventsResponse]
    def list_financial_events(opts = {})
      data, _status_code, _headers = list_financial_events_with_http_info(opts)
      data
    end

    # Returns financial events for the specified data range. It may take up to 48 hours for orders to appear in your financial events.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 0.5 | 30 |  The &#x60;x-amzn-RateLimit-Limit&#x60; response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values than those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :max_results_per_page The maximum number of results to return per page. If the response exceeds the maximum number of transactions or 10 MB, the API responds with &#x27;InvalidInput&#x27;.
    # @option opts [DateTime] :posted_after A date used for selecting financial events posted after (or at) a specified time. The date-time must be no later than two minutes before the request was submitted, in ISO 8601 date time format.
    # @option opts [DateTime] :posted_before A date used for selecting financial events posted before (but not at) a specified time. The date-time must be later than PostedAfter and no later than two minutes before the request was submitted, in ISO 8601 date time format. If PostedAfter and PostedBefore are more than 180 days apart, no financial events are returned. You must specify the PostedAfter parameter if you specify the PostedBefore parameter. Default: Now minus two minutes.
    # @option opts [String] :next_token A string token returned in the response of your previous request.
    # @return [Array<(ListFinancialEventsResponse, Integer, Hash)>] ListFinancialEventsResponse data, response status code and response headers
    def list_financial_events_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DefaultApi.list_financial_events ...'
      end
      # resource path
      local_var_path = '/finances/v0/financialEvents'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'MaxResultsPerPage'] = opts[:'max_results_per_page'] if !opts[:'max_results_per_page'].nil?
      query_params[:'PostedAfter'] = opts[:'posted_after'] if !opts[:'posted_after'].nil?
      query_params[:'PostedBefore'] = opts[:'posted_before'] if !opts[:'posted_before'].nil?
      query_params[:'NextToken'] = opts[:'next_token'] if !opts[:'next_token'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'ListFinancialEventsResponse' 

      auth_names = opts[:auth_names] || []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DefaultApi#list_financial_events\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Returns all financial events for the specified financial event group. It may take up to 48 hours for orders to appear in your financial events.  **Note:** This operation will only retrieve group's data for the past two years. If a request is submitted for data spanning more than two years, an empty response is returned.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 0.5 | 30 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values than those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).
    # @param event_group_id The identifier of the financial event group to which the events belong.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :max_results_per_page The maximum number of results to return per page. If the response exceeds the maximum number of transactions or 10 MB, the API responds with &#x27;InvalidInput&#x27;. (default to 100)
    # @option opts [DateTime] :posted_after A date used for selecting financial events posted after (or at) a specified time. The date-time **must** be more than two minutes before the time of the request, in ISO 8601 date time format.
    # @option opts [DateTime] :posted_before A date used for selecting financial events posted before (but not at) a specified time. The date-time must be later than &#x60;PostedAfter&#x60; and no later than two minutes before the request was submitted, in ISO 8601 date time format. If &#x60;PostedAfter&#x60; and &#x60;PostedBefore&#x60; are more than 180 days apart, no financial events are returned. You must specify the &#x60;PostedAfter&#x60; parameter if you specify the &#x60;PostedBefore&#x60; parameter. Default: Now minus two minutes.
    # @option opts [String] :next_token A string token returned in the response of your previous request.
    # @return [ListFinancialEventsResponse]
    def list_financial_events_by_group_id(event_group_id, opts = {})
      data, _status_code, _headers = list_financial_events_by_group_id_with_http_info(event_group_id, opts)
      data
    end

    # Returns all financial events for the specified financial event group. It may take up to 48 hours for orders to appear in your financial events.  **Note:** This operation will only retrieve group&#x27;s data for the past two years. If a request is submitted for data spanning more than two years, an empty response is returned.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 0.5 | 30 |  The &#x60;x-amzn-RateLimit-Limit&#x60; response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values than those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).
    # @param event_group_id The identifier of the financial event group to which the events belong.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :max_results_per_page The maximum number of results to return per page. If the response exceeds the maximum number of transactions or 10 MB, the API responds with &#x27;InvalidInput&#x27;.
    # @option opts [DateTime] :posted_after A date used for selecting financial events posted after (or at) a specified time. The date-time **must** be more than two minutes before the time of the request, in ISO 8601 date time format.
    # @option opts [DateTime] :posted_before A date used for selecting financial events posted before (but not at) a specified time. The date-time must be later than &#x60;PostedAfter&#x60; and no later than two minutes before the request was submitted, in ISO 8601 date time format. If &#x60;PostedAfter&#x60; and &#x60;PostedBefore&#x60; are more than 180 days apart, no financial events are returned. You must specify the &#x60;PostedAfter&#x60; parameter if you specify the &#x60;PostedBefore&#x60; parameter. Default: Now minus two minutes.
    # @option opts [String] :next_token A string token returned in the response of your previous request.
    # @return [Array<(ListFinancialEventsResponse, Integer, Hash)>] ListFinancialEventsResponse data, response status code and response headers
    def list_financial_events_by_group_id_with_http_info(event_group_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DefaultApi.list_financial_events_by_group_id ...'
      end
      # verify the required parameter 'event_group_id' is set
      if @api_client.config.client_side_validation && event_group_id.nil?
        fail ArgumentError, "Missing the required parameter 'event_group_id' when calling DefaultApi.list_financial_events_by_group_id"
      end
      # resource path
      local_var_path = '/finances/v0/financialEventGroups/{eventGroupId}/financialEvents'.sub('{' + 'eventGroupId' + '}', event_group_id.to_s)

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'MaxResultsPerPage'] = opts[:'max_results_per_page'] if !opts[:'max_results_per_page'].nil?
      query_params[:'PostedAfter'] = opts[:'posted_after'] if !opts[:'posted_after'].nil?
      query_params[:'PostedBefore'] = opts[:'posted_before'] if !opts[:'posted_before'].nil?
      query_params[:'NextToken'] = opts[:'next_token'] if !opts[:'next_token'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'ListFinancialEventsResponse' 

      auth_names = opts[:auth_names] || []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DefaultApi#list_financial_events_by_group_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Returns all financial events for the specified order. It may take up to 48 hours for orders to appear in your financial events.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 0.5 | 30 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values than those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).
    # @param order_id An Amazon-defined order identifier, in 3-7-7 format.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :max_results_per_page The maximum number of results to return per page. If the response exceeds the maximum number of transactions or 10 MB, the API responds with &#x27;InvalidInput&#x27;. (default to 100)
    # @option opts [String] :next_token A string token returned in the response of your previous request.
    # @return [ListFinancialEventsResponse]
    def list_financial_events_by_order_id(order_id, opts = {})
      data, _status_code, _headers = list_financial_events_by_order_id_with_http_info(order_id, opts)
      data
    end

    # Returns all financial events for the specified order. It may take up to 48 hours for orders to appear in your financial events.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 0.5 | 30 |  The &#x60;x-amzn-RateLimit-Limit&#x60; response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values than those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).
    # @param order_id An Amazon-defined order identifier, in 3-7-7 format.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :max_results_per_page The maximum number of results to return per page. If the response exceeds the maximum number of transactions or 10 MB, the API responds with &#x27;InvalidInput&#x27;.
    # @option opts [String] :next_token A string token returned in the response of your previous request.
    # @return [Array<(ListFinancialEventsResponse, Integer, Hash)>] ListFinancialEventsResponse data, response status code and response headers
    def list_financial_events_by_order_id_with_http_info(order_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DefaultApi.list_financial_events_by_order_id ...'
      end
      # verify the required parameter 'order_id' is set
      if @api_client.config.client_side_validation && order_id.nil?
        fail ArgumentError, "Missing the required parameter 'order_id' when calling DefaultApi.list_financial_events_by_order_id"
      end
      # resource path
      local_var_path = '/finances/v0/orders/{orderId}/financialEvents'.sub('{' + 'orderId' + '}', order_id.to_s)

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'MaxResultsPerPage'] = opts[:'max_results_per_page'] if !opts[:'max_results_per_page'].nil?
      query_params[:'NextToken'] = opts[:'next_token'] if !opts[:'next_token'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'ListFinancialEventsResponse' 

      auth_names = opts[:auth_names] || []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DefaultApi#list_financial_events_by_order_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
