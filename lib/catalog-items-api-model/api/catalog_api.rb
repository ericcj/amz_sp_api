=begin
#Selling Partner API for Catalog Items

#The Selling Partner API for Catalog Items provides programmatic access to information about items in the Amazon catalog.  For more information, see the [Catalog Items API Use Case Guide](https://github.com/amzn/selling-partner-api-docs/blob/main/guides/en-US/use-case-guides/catalog-items-api-use-case-guide/catalog-items-api-use-case-guide_2020-12-01.md).

OpenAPI spec version: 2020-12-01

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.29
=end

module AmzSpApi::CatalogItemsApiModel
  class CatalogApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Retrieves details for an item in the Amazon catalog.  **Usage Plans:**  | Plan type | Rate (requests per second) | Burst | | ---- | ---- | ---- | |Default| 5 | 5 | |Selling partner specific| Variable | Variable |  The x-amzn-RateLimit-Limit response header returns the usage plan rate limits that were applied to the requested operation. Rate limits for some selling partners will vary from the default rate and burst shown in the table above. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](https://github.com/amzn/selling-partner-api-docs/blob/main/guides/en-US/usage-plans-rate-limits/Usage-Plans-and-Rate-Limits.md).
    # @param asin The Amazon Standard Identification Number (ASIN) of the item.
    # @param marketplace_ids A comma-delimited list of Amazon marketplace identifiers. Data sets in the response contain data only for the specified marketplaces.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :included_data A comma-delimited list of data sets to include in the response. Default: summaries.
    # @option opts [String] :locale Locale for retrieving localized summaries. Defaults to the primary locale of the marketplace.
    # @return [Item]
    def get_catalog_item(asin, marketplace_ids, opts = {})
      data, _status_code, _headers = get_catalog_item_with_http_info(asin, marketplace_ids, opts)
      data
    end

    # Retrieves details for an item in the Amazon catalog.  **Usage Plans:**  | Plan type | Rate (requests per second) | Burst | | ---- | ---- | ---- | |Default| 5 | 5 | |Selling partner specific| Variable | Variable |  The x-amzn-RateLimit-Limit response header returns the usage plan rate limits that were applied to the requested operation. Rate limits for some selling partners will vary from the default rate and burst shown in the table above. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](https://github.com/amzn/selling-partner-api-docs/blob/main/guides/en-US/usage-plans-rate-limits/Usage-Plans-and-Rate-Limits.md).
    # @param asin The Amazon Standard Identification Number (ASIN) of the item.
    # @param marketplace_ids A comma-delimited list of Amazon marketplace identifiers. Data sets in the response contain data only for the specified marketplaces.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :included_data A comma-delimited list of data sets to include in the response. Default: summaries.
    # @option opts [String] :locale Locale for retrieving localized summaries. Defaults to the primary locale of the marketplace.
    # @return [Array<(Item, Integer, Hash)>] Item data, response status code and response headers
    def get_catalog_item_with_http_info(asin, marketplace_ids, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CatalogApi.get_catalog_item ...'
      end
      # verify the required parameter 'asin' is set
      if @api_client.config.client_side_validation && asin.nil?
        fail ArgumentError, "Missing the required parameter 'asin' when calling CatalogApi.get_catalog_item"
      end
      # verify the required parameter 'marketplace_ids' is set
      if @api_client.config.client_side_validation && marketplace_ids.nil?
        fail ArgumentError, "Missing the required parameter 'marketplace_ids' when calling CatalogApi.get_catalog_item"
      end
      if @api_client.config.client_side_validation && opts[:'included_data'] && !opts[:'included_data'].all? { |item| ['attributes', 'identifiers', 'images', 'productTypes', 'salesRanks', 'summaries', 'variations', 'vendorDetails'].include?(item) }
        fail ArgumentError, 'invalid value for "included_data", must include one of attributes, identifiers, images, productTypes, salesRanks, summaries, variations, vendorDetails'
      end
      # resource path
      local_var_path = '/catalog/2020-12-01/items/{asin}'.sub('{' + 'asin' + '}', asin.to_s)

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'marketplaceIds'] = @api_client.build_collection_param(marketplace_ids, :csv)
      query_params[:'includedData'] = @api_client.build_collection_param(opts[:'included_data'], :csv) if !opts[:'included_data'].nil?
      query_params[:'locale'] = opts[:'locale'] if !opts[:'locale'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'Item' 

      auth_names = opts[:auth_names] || []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CatalogApi#get_catalog_item\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Retrieves details for multiple items in the Amazon catalog.  **Usage Plans:**  | Plan type | Rate (requests per second) | Burst | | ---- | ---- | ---- | |Default| 5 | 5 | |Selling partner specific| Variable | Variable |  The x-amzn-RateLimit-Limit response header returns the usage plan rate limits that were applied to the requested operation. Rate limits for some selling partners will vary from the default rate and burst shown in the table above. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](https://github.com/amzn/selling-partner-api-docs/blob/main/guides/en-US/usage-plans-rate-limits/Usage-Plans-and-Rate-Limits.md).
    # @param identifiers A comma-delimited list of item identifiers.
    # @param identifiers_type The type of item identifiers in the `identifiers` parameter.
    # @param marketplace_ids A comma-delimited list of Amazon marketplace identifiers. Data sets in the response contain data only for the specified marketplaces.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :included_data A comma-delimited list of data sets to include in the response. Default: summaries.
    # @option opts [String] :locale Locale for retrieving localized summaries. Defaults to the primary locale of the marketplace.
    # @return [Array<(ItemSearchResults, Integer, Hash)>] Item data, response status code and response headers
    def get_catalog_items_20220401_with_http_info(marketplace_ids, identifiers, identifiers_type = 'ASIN', opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CatalogApi.get_catalog_item(2022-04-01) ...'
      end
      # verify the required parameter 'marketplace_ids' is set
      if @api_client.config.client_side_validation && marketplace_ids.nil?
        fail ArgumentError, "Missing the required parameter 'marketplace_ids' when calling CatalogApi.get_catalog_item(2022-04-01)"
      end
      # verify the required parameter 'identifiers' is set
      if @api_client.config.client_side_validation && identifiers.nil?
        fail ArgumentError, "Missing the required parameter 'identifiers' when calling CatalogApi.get_catalog_item(2022-04-01)"
      end
      if @api_client.config.client_side_validation && opts[:'included_data'] && !opts[:'included_data'].all? { |item| ['attributes', 'identifiers', 'images', 'productTypes', 'salesRanks', 'summaries', 'relationships', 'vendorDetails'].include?(item) }
        fail ArgumentError, 'invalid value for "included_data", must include one of attributes, identifiers, images, productTypes, salesRanks, summaries, relationships, vendorDetails'
      end
      # resource path
      local_var_path = "/catalog/2022-04-01/items/"

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'marketplaceIds'] = marketplace_ids.compact.uniq.join(',')
      query_params[:'identifiers'] = identifiers.compact.uniq.join(',')
      query_params[:'identifiersType'] = identifiers_type
      query_params[:'includedData'] = @api_client.build_collection_param(opts[:'included_data'], :csv) if !opts[:'included_data'].nil?
      query_params[:'locale'] = opts[:'locale'] if !opts[:'locale'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'ItemSearchResults'

      auth_names = opts[:auth_names] || []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CatalogApi#get_catalog_item(2022-04-01)\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Search for and return a list of Amazon catalog items and associated information.  **Usage Plans:**  | Plan type | Rate (requests per second) | Burst | | ---- | ---- | ---- | |Default| 5 | 5 | |Selling partner specific| Variable | Variable |  The x-amzn-RateLimit-Limit response header returns the usage plan rate limits that were applied to the requested operation. Rate limits for some selling partners will vary from the default rate and burst shown in the table above. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](https://github.com/amzn/selling-partner-api-docs/blob/main/guides/en-US/usage-plans-rate-limits/Usage-Plans-and-Rate-Limits.md).
    # @param keywords A comma-delimited list of words or item identifiers to search the Amazon catalog for.
    # @param marketplace_ids A comma-delimited list of Amazon marketplace identifiers for the request.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :included_data A comma-delimited list of data sets to include in the response. Default: summaries.
    # @option opts [Array<String>] :brand_names A comma-delimited list of brand names to limit the search to.
    # @option opts [Array<String>] :classification_ids A comma-delimited list of classification identifiers to limit the search to.
    # @option opts [Integer] :page_size Number of results to be returned per page. (default to 10)
    # @option opts [String] :page_token A token to fetch a certain page when there are multiple pages worth of results.
    # @option opts [String] :keywords_locale The language the keywords are provided in. Defaults to the primary locale of the marketplace.
    # @option opts [String] :locale Locale for retrieving localized summaries. Defaults to the primary locale of the marketplace.
    # @return [ItemSearchResults]
    def search_catalog_items(keywords, marketplace_ids, opts = {})
      data, _status_code, _headers = search_catalog_items_with_http_info(keywords, marketplace_ids, opts)
      data
    end

    # Search for and return a list of Amazon catalog items and associated information.  **Usage Plans:**  | Plan type | Rate (requests per second) | Burst | | ---- | ---- | ---- | |Default| 5 | 5 | |Selling partner specific| Variable | Variable |  The x-amzn-RateLimit-Limit response header returns the usage plan rate limits that were applied to the requested operation. Rate limits for some selling partners will vary from the default rate and burst shown in the table above. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](https://github.com/amzn/selling-partner-api-docs/blob/main/guides/en-US/usage-plans-rate-limits/Usage-Plans-and-Rate-Limits.md).
    # @param keywords A comma-delimited list of words or item identifiers to search the Amazon catalog for.
    # @param marketplace_ids A comma-delimited list of Amazon marketplace identifiers for the request.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :included_data A comma-delimited list of data sets to include in the response. Default: summaries.
    # @option opts [Array<String>] :brand_names A comma-delimited list of brand names to limit the search to.
    # @option opts [Array<String>] :classification_ids A comma-delimited list of classification identifiers to limit the search to.
    # @option opts [Integer] :page_size Number of results to be returned per page.
    # @option opts [String] :page_token A token to fetch a certain page when there are multiple pages worth of results.
    # @option opts [String] :keywords_locale The language the keywords are provided in. Defaults to the primary locale of the marketplace.
    # @option opts [String] :locale Locale for retrieving localized summaries. Defaults to the primary locale of the marketplace.
    # @return [Array<(ItemSearchResults, Integer, Hash)>] ItemSearchResults data, response status code and response headers
    def search_catalog_items_with_http_info(keywords, marketplace_ids, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CatalogApi.search_catalog_items ...'
      end
      # verify the required parameter 'keywords' is set
      if @api_client.config.client_side_validation && keywords.nil?
        fail ArgumentError, "Missing the required parameter 'keywords' when calling CatalogApi.search_catalog_items"
      end
      # verify the required parameter 'marketplace_ids' is set
      if @api_client.config.client_side_validation && marketplace_ids.nil?
        fail ArgumentError, "Missing the required parameter 'marketplace_ids' when calling CatalogApi.search_catalog_items"
      end
      if @api_client.config.client_side_validation && opts[:'included_data'] && !opts[:'included_data'].all? { |item| ['identifiers', 'images', 'productTypes', 'salesRanks', 'summaries', 'variations', 'vendorDetails'].include?(item) }
        fail ArgumentError, 'invalid value for "included_data", must include one of identifiers, images, productTypes, salesRanks, summaries, variations, vendorDetails'
      end
      # resource path
      local_var_path = '/catalog/2020-12-01/items'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'keywords'] = @api_client.build_collection_param(keywords, :csv)
      query_params[:'marketplaceIds'] = @api_client.build_collection_param(marketplace_ids, :csv)
      query_params[:'includedData'] = @api_client.build_collection_param(opts[:'included_data'], :csv) if !opts[:'included_data'].nil?
      query_params[:'brandNames'] = @api_client.build_collection_param(opts[:'brand_names'], :csv) if !opts[:'brand_names'].nil?
      query_params[:'classificationIds'] = @api_client.build_collection_param(opts[:'classification_ids'], :csv) if !opts[:'classification_ids'].nil?
      query_params[:'pageSize'] = opts[:'page_size'] if !opts[:'page_size'].nil?
      query_params[:'pageToken'] = opts[:'page_token'] if !opts[:'page_token'].nil?
      query_params[:'keywordsLocale'] = opts[:'keywords_locale'] if !opts[:'keywords_locale'].nil?
      query_params[:'locale'] = opts[:'locale'] if !opts[:'locale'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'ItemSearchResults' 

      auth_names = opts[:auth_names] || []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CatalogApi#search_catalog_items\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
