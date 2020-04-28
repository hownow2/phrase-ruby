require 'cgi'

module Phrase
  class UploadsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Upload a new file
    # Upload a new language file. Creates necessary resources in your project.
    # @param project_id [String] Project ID
    # @param upload_create_parameters [UploadCreateParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [nil]
    def upload_create(project_id, upload_create_parameters, opts = {})
      upload_create_with_http_info(project_id, upload_create_parameters, opts)
      nil
    end

    # Upload a new file
    # Upload a new language file. Creates necessary resources in your project.
    # @param project_id [String] Project ID
    # @param upload_create_parameters [UploadCreateParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response<(nil)>, Integer, Hash)>] Response<(nil, response status code and response headers
    def upload_create_with_http_info(project_id, upload_create_parameters, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UploadsApi.upload_create ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling UploadsApi.upload_create"
      end
      # verify the required parameter 'upload_create_parameters' is set
      if @api_client.config.client_side_validation && upload_create_parameters.nil?
        fail ArgumentError, "Missing the required parameter 'upload_create_parameters' when calling UploadsApi.upload_create"
      end
      # resource path
      local_var_path = '/projects/{project_id}/uploads'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(upload_create_parameters) 

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
        @api_client.config.logger.debug "API called: UploadsApi#upload_create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # View upload details
    # View details and summary for a single upload.
    # @param project_id [String] Project ID
    # @param id [String] ID
    # @param upload_show_parameters [UploadShowParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Upload]
    def upload_show(project_id, id, upload_show_parameters, opts = {})
      data, _status_code, _headers = upload_show_with_http_info(project_id, id, upload_show_parameters, opts)
      data
    end

    # View upload details
    # View details and summary for a single upload.
    # @param project_id [String] Project ID
    # @param id [String] ID
    # @param upload_show_parameters [UploadShowParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response<(Upload)>, Integer, Hash)>] Response<(Upload)> data, response status code and response headers
    def upload_show_with_http_info(project_id, id, upload_show_parameters, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UploadsApi.upload_show ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling UploadsApi.upload_show"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling UploadsApi.upload_show"
      end
      # verify the required parameter 'upload_show_parameters' is set
      if @api_client.config.client_side_validation && upload_show_parameters.nil?
        fail ArgumentError, "Missing the required parameter 'upload_show_parameters' when calling UploadsApi.upload_show"
      end
      # resource path
      local_var_path = '/projects/{project_id}/uploads/{id}'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s)).sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(upload_show_parameters) 

      # return_type
      return_type = opts[:return_type] || 'Upload' 

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
        @api_client.config.logger.debug "API called: UploadsApi#upload_show\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # List uploads
    # List all uploads for the given project.
    # @param project_id [String] Project ID
    # @param uploads_list_parameters [UploadsListParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [Integer] :page Page number
    # @option opts [Integer] :per_page allows you to specify a page size up to 100 items, 10 by default
    # @return [Array<Object>]
    def uploads_list(project_id, uploads_list_parameters, opts = {})
      data, _status_code, _headers = uploads_list_with_http_info(project_id, uploads_list_parameters, opts)
      data
    end

    # List uploads
    # List all uploads for the given project.
    # @param project_id [String] Project ID
    # @param uploads_list_parameters [UploadsListParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [Integer] :page Page number
    # @option opts [Integer] :per_page allows you to specify a page size up to 100 items, 10 by default
    # @return [Array<(Response<(Array<Object>)>, Integer, Hash)>] Response<(Array<Object>)> data, response status code and response headers
    def uploads_list_with_http_info(project_id, uploads_list_parameters, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UploadsApi.uploads_list ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling UploadsApi.uploads_list"
      end
      # verify the required parameter 'uploads_list_parameters' is set
      if @api_client.config.client_side_validation && uploads_list_parameters.nil?
        fail ArgumentError, "Missing the required parameter 'uploads_list_parameters' when calling UploadsApi.uploads_list"
      end
      # resource path
      local_var_path = '/projects/{project_id}/uploads'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(uploads_list_parameters) 

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
        @api_client.config.logger.debug "API called: UploadsApi#uploads_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end
  end
end
