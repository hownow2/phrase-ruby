require 'cgi'

module Phrase
  class OrdersApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Confirm an order
    # Confirm an existing order and send it to the provider for translation. Same constraints as for create.
    # @param project_id [String] Project ID
    # @param id [String] ID
    # @param order_confirm_parameters [OrderConfirmParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Object]
    def order_confirm(project_id, id, order_confirm_parameters, opts = {})
      data, _status_code, _headers = order_confirm_with_http_info(project_id, id, order_confirm_parameters, opts)
      data
    end

    # Confirm an order
    # Confirm an existing order and send it to the provider for translation. Same constraints as for create.
    # @param project_id [String] Project ID
    # @param id [String] ID
    # @param order_confirm_parameters [OrderConfirmParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response<(Object)>, Integer, Hash)>] Response<(Object)> data, response status code and response headers
    def order_confirm_with_http_info(project_id, id, order_confirm_parameters, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrdersApi.order_confirm ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling OrdersApi.order_confirm"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling OrdersApi.order_confirm"
      end
      # verify the required parameter 'order_confirm_parameters' is set
      if @api_client.config.client_side_validation && order_confirm_parameters.nil?
        fail ArgumentError, "Missing the required parameter 'order_confirm_parameters' when calling OrdersApi.order_confirm"
      end
      # resource path
      local_var_path = '/projects/{project_id}/orders/{id}/confirm'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s)).sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'X-PhraseApp-OTP'] = opts[:'x_phrase_app_otp'] if !opts[:'x_phrase_app_otp'].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(order_confirm_parameters) 

      # return_type
      return_type = opts[:return_type] || 'Object' 

      # auth_names
      auth_names = opts[:auth_names] || ['Basic', 'Token']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrdersApi#order_confirm\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # Create a new order
    # Create a new order. Access token scope must include <code>orders.create</code>.
    # @param project_id [String] Project ID
    # @param order_create_parameters [OrderCreateParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [nil]
    def order_create(project_id, order_create_parameters, opts = {})
      order_create_with_http_info(project_id, order_create_parameters, opts)
      nil
    end

    # Create a new order
    # Create a new order. Access token scope must include &lt;code&gt;orders.create&lt;/code&gt;.
    # @param project_id [String] Project ID
    # @param order_create_parameters [OrderCreateParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response<(nil)>, Integer, Hash)>] Response<(nil, response status code and response headers
    def order_create_with_http_info(project_id, order_create_parameters, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrdersApi.order_create ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling OrdersApi.order_create"
      end
      # verify the required parameter 'order_create_parameters' is set
      if @api_client.config.client_side_validation && order_create_parameters.nil?
        fail ArgumentError, "Missing the required parameter 'order_create_parameters' when calling OrdersApi.order_create"
      end
      # resource path
      local_var_path = '/projects/{project_id}/orders'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'X-PhraseApp-OTP'] = opts[:'x_phrase_app_otp'] if !opts[:'x_phrase_app_otp'].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(order_create_parameters) 

      # return_type
      return_type = opts[:return_type] 

      # auth_names
      auth_names = opts[:auth_names] || ['Basic', 'Token']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrdersApi#order_create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # Cancel an order
    # Cancel an existing order. Must not yet be confirmed.
    # @param project_id [String] Project ID
    # @param id [String] ID
    # @param order_delete_parameters [OrderDeleteParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [nil]
    def order_delete(project_id, id, order_delete_parameters, opts = {})
      order_delete_with_http_info(project_id, id, order_delete_parameters, opts)
      nil
    end

    # Cancel an order
    # Cancel an existing order. Must not yet be confirmed.
    # @param project_id [String] Project ID
    # @param id [String] ID
    # @param order_delete_parameters [OrderDeleteParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response<(nil)>, Integer, Hash)>] Response<(nil, response status code and response headers
    def order_delete_with_http_info(project_id, id, order_delete_parameters, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrdersApi.order_delete ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling OrdersApi.order_delete"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling OrdersApi.order_delete"
      end
      # verify the required parameter 'order_delete_parameters' is set
      if @api_client.config.client_side_validation && order_delete_parameters.nil?
        fail ArgumentError, "Missing the required parameter 'order_delete_parameters' when calling OrdersApi.order_delete"
      end
      # resource path
      local_var_path = '/projects/{project_id}/orders/{id}'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s)).sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'X-PhraseApp-OTP'] = opts[:'x_phrase_app_otp'] if !opts[:'x_phrase_app_otp'].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(order_delete_parameters) 

      # return_type
      return_type = opts[:return_type] 

      # auth_names
      auth_names = opts[:auth_names] || ['Basic', 'Token']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrdersApi#order_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # Get a single order
    # Get details on a single order.
    # @param project_id [String] Project ID
    # @param id [String] ID
    # @param order_show_parameters [OrderShowParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [TranslationOrder]
    def order_show(project_id, id, order_show_parameters, opts = {})
      data, _status_code, _headers = order_show_with_http_info(project_id, id, order_show_parameters, opts)
      data
    end

    # Get a single order
    # Get details on a single order.
    # @param project_id [String] Project ID
    # @param id [String] ID
    # @param order_show_parameters [OrderShowParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response<(TranslationOrder)>, Integer, Hash)>] Response<(TranslationOrder)> data, response status code and response headers
    def order_show_with_http_info(project_id, id, order_show_parameters, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrdersApi.order_show ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling OrdersApi.order_show"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling OrdersApi.order_show"
      end
      # verify the required parameter 'order_show_parameters' is set
      if @api_client.config.client_side_validation && order_show_parameters.nil?
        fail ArgumentError, "Missing the required parameter 'order_show_parameters' when calling OrdersApi.order_show"
      end
      # resource path
      local_var_path = '/projects/{project_id}/orders/{id}'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s)).sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'X-PhraseApp-OTP'] = opts[:'x_phrase_app_otp'] if !opts[:'x_phrase_app_otp'].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(order_show_parameters) 

      # return_type
      return_type = opts[:return_type] || 'TranslationOrder' 

      # auth_names
      auth_names = opts[:auth_names] || ['Basic', 'Token']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrdersApi#order_show\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # List orders
    # List all orders for the given project.
    # @param project_id [String] Project ID
    # @param orders_list_parameters [OrdersListParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [Integer] :page Page number
    # @option opts [Integer] :per_page allows you to specify a page size up to 100 items, 10 by default
    # @return [Array<Object>]
    def orders_list(project_id, orders_list_parameters, opts = {})
      data, _status_code, _headers = orders_list_with_http_info(project_id, orders_list_parameters, opts)
      data
    end

    # List orders
    # List all orders for the given project.
    # @param project_id [String] Project ID
    # @param orders_list_parameters [OrdersListParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [Integer] :page Page number
    # @option opts [Integer] :per_page allows you to specify a page size up to 100 items, 10 by default
    # @return [Array<(Response<(Array<Object>)>, Integer, Hash)>] Response<(Array<Object>)> data, response status code and response headers
    def orders_list_with_http_info(project_id, orders_list_parameters, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrdersApi.orders_list ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling OrdersApi.orders_list"
      end
      # verify the required parameter 'orders_list_parameters' is set
      if @api_client.config.client_side_validation && orders_list_parameters.nil?
        fail ArgumentError, "Missing the required parameter 'orders_list_parameters' when calling OrdersApi.orders_list"
      end
      # resource path
      local_var_path = '/projects/{project_id}/orders'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'per_page'] = opts[:'per_page'] if !opts[:'per_page'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'X-PhraseApp-OTP'] = opts[:'x_phrase_app_otp'] if !opts[:'x_phrase_app_otp'].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(orders_list_parameters) 

      # return_type
      return_type = opts[:return_type] || 'Array<Object>' 

      # auth_names
      auth_names = opts[:auth_names] || ['Basic', 'Token']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrdersApi#orders_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end
  end
end
