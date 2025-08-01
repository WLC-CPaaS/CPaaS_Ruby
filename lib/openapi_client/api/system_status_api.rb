=begin
#White Label Communications CPaas API Documentation

#A CPaaS platform API

The version of the OpenAPI document: 1.1
Contact: support@whitelabelcomm.com
Generated by: https://openapi-generator.tech
Generator version: 7.11.0-SNAPSHOT

=end

require 'cgi'

module OpenapiClient
  class SystemStatusApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Provisioning Ping
    # Ping the provisioning service.
    # @param [Hash] opts the optional parameters
    # @return [ProvisioningDocsDocsPingOutput]
    def v1_ap_ping_get(opts = {})
      data, _status_code, _headers = v1_ap_ping_get_with_http_info(opts)
      data
    end

    # Provisioning Ping
    # Ping the provisioning service.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ProvisioningDocsDocsPingOutput, Integer, Hash)>] ProvisioningDocsDocsPingOutput data, response status code and response headers
    def v1_ap_ping_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SystemStatusApi.v1_ap_ping_get ...'
      end
      # resource path
      local_var_path = '/v1/ap/ping'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ProvisioningDocsDocsPingOutput'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BearerAuth']

      new_options = opts.merge(
        :operation => :"SystemStatusApi.v1_ap_ping_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SystemStatusApi#v1_ap_ping_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Ping Backend
    # Get the ping message.
    # @param [Hash] opts the optional parameters
    # @return [ServiceDocsPingGet]
    def v1_ping_get(opts = {})
      data, _status_code, _headers = v1_ping_get_with_http_info(opts)
      data
    end

    # Ping Backend
    # Get the ping message.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ServiceDocsPingGet, Integer, Hash)>] ServiceDocsPingGet data, response status code and response headers
    def v1_ping_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SystemStatusApi.v1_ping_get ...'
      end
      # resource path
      local_var_path = '/v1/ping'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ServiceDocsPingGet'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BearerAuth']

      new_options = opts.merge(
        :operation => :"SystemStatusApi.v1_ping_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SystemStatusApi#v1_ping_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Ping Cognito
    # Get a secure ping message.
    # @param [Hash] opts the optional parameters
    # @return [ServiceDocsPingGet]
    def v1_pingseccognito_get(opts = {})
      data, _status_code, _headers = v1_pingseccognito_get_with_http_info(opts)
      data
    end

    # Ping Cognito
    # Get a secure ping message.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ServiceDocsPingGet, Integer, Hash)>] ServiceDocsPingGet data, response status code and response headers
    def v1_pingseccognito_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SystemStatusApi.v1_pingseccognito_get ...'
      end
      # resource path
      local_var_path = '/v1/pingseccognito'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ServiceDocsPingGet'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BearerAuth']

      new_options = opts.merge(
        :operation => :"SystemStatusApi.v1_pingseccognito_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SystemStatusApi#v1_pingseccognito_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get System Status
    # Get the system status.
    # @param [Hash] opts the optional parameters
    # @return [ServiceDocsSystemStatusGetSingle]
    def v1_system_status_get(opts = {})
      data, _status_code, _headers = v1_system_status_get_with_http_info(opts)
      data
    end

    # Get System Status
    # Get the system status.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ServiceDocsSystemStatusGetSingle, Integer, Hash)>] ServiceDocsSystemStatusGetSingle data, response status code and response headers
    def v1_system_status_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SystemStatusApi.v1_system_status_get ...'
      end
      # resource path
      local_var_path = '/v1/system_status'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ServiceDocsSystemStatusGetSingle'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BearerAuth']

      new_options = opts.merge(
        :operation => :"SystemStatusApi.v1_system_status_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SystemStatusApi#v1_system_status_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
