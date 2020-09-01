=begin
#KeyVaultClient

#The key vault client performs cryptographic key operations and vault operations against the Key Vault service.

OpenAPI spec version: 7.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.15

=end

require 'uri'

module SwaggerClient
  class SecretsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Backs up the specified secret.
    # Requests that a backup of the specified secret be downloaded to the client. All versions of the secret will be downloaded. This operation requires the secrets/backup permission.
    # @param secret_name The name of the secret.
    # @param api_version Client API version.
    # @param [Hash] opts the optional parameters
    # @return [BackupSecretResult]
    def backup_secret(secret_name, api_version, opts = {})
      data, _status_code, _headers = backup_secret_with_http_info(secret_name, api_version, opts)
      data
    end

    # Backs up the specified secret.
    # Requests that a backup of the specified secret be downloaded to the client. All versions of the secret will be downloaded. This operation requires the secrets/backup permission.
    # @param secret_name The name of the secret.
    # @param api_version Client API version.
    # @param [Hash] opts the optional parameters
    # @return [Array<(BackupSecretResult, Fixnum, Hash)>] BackupSecretResult data, response status code and response headers
    def backup_secret_with_http_info(secret_name, api_version, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SecretsApi.backup_secret ...'
      end
      # verify the required parameter 'secret_name' is set
      if @api_client.config.client_side_validation && secret_name.nil?
        fail ArgumentError, "Missing the required parameter 'secret_name' when calling SecretsApi.backup_secret"
      end
      # verify the required parameter 'api_version' is set
      if @api_client.config.client_side_validation && api_version.nil?
        fail ArgumentError, "Missing the required parameter 'api_version' when calling SecretsApi.backup_secret"
      end
      # resource path
      local_var_path = '/secrets/{secret-name}/backup'.sub('{' + 'secret-name' + '}', secret_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'api-version'] = api_version

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BackupSecretResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SecretsApi#backup_secret\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Deletes a secret from a specified key vault.
    # The DELETE operation applies to any secret stored in Azure Key Vault. DELETE cannot be applied to an individual version of a secret. This operation requires the secrets/delete permission.
    # @param secret_name The name of the secret.
    # @param api_version Client API version.
    # @param [Hash] opts the optional parameters
    # @return [DeletedSecretBundle]
    def delete_secret(secret_name, api_version, opts = {})
      data, _status_code, _headers = delete_secret_with_http_info(secret_name, api_version, opts)
      data
    end

    # Deletes a secret from a specified key vault.
    # The DELETE operation applies to any secret stored in Azure Key Vault. DELETE cannot be applied to an individual version of a secret. This operation requires the secrets/delete permission.
    # @param secret_name The name of the secret.
    # @param api_version Client API version.
    # @param [Hash] opts the optional parameters
    # @return [Array<(DeletedSecretBundle, Fixnum, Hash)>] DeletedSecretBundle data, response status code and response headers
    def delete_secret_with_http_info(secret_name, api_version, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SecretsApi.delete_secret ...'
      end
      # verify the required parameter 'secret_name' is set
      if @api_client.config.client_side_validation && secret_name.nil?
        fail ArgumentError, "Missing the required parameter 'secret_name' when calling SecretsApi.delete_secret"
      end
      # verify the required parameter 'api_version' is set
      if @api_client.config.client_side_validation && api_version.nil?
        fail ArgumentError, "Missing the required parameter 'api_version' when calling SecretsApi.delete_secret"
      end
      # resource path
      local_var_path = '/secrets/{secret-name}'.sub('{' + 'secret-name' + '}', secret_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'api-version'] = api_version

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'DeletedSecretBundle')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SecretsApi#delete_secret\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get a specified secret from a given key vault.
    # The GET operation is applicable to any secret stored in Azure Key Vault. This operation requires the secrets/get permission.
    # @param secret_name The name of the secret.
    # @param secret_version The version of the secret. This URI fragment is optional. If not specified, the latest version of the secret is returned.
    # @param api_version Client API version.
    # @param [Hash] opts the optional parameters
    # @return [SecretBundle]
    def get_secret(secret_name, secret_version, api_version, opts = {})
      data, _status_code, _headers = get_secret_with_http_info(secret_name, secret_version, api_version, opts)
      data
    end

    # Get a specified secret from a given key vault.
    # The GET operation is applicable to any secret stored in Azure Key Vault. This operation requires the secrets/get permission.
    # @param secret_name The name of the secret.
    # @param secret_version The version of the secret. This URI fragment is optional. If not specified, the latest version of the secret is returned.
    # @param api_version Client API version.
    # @param [Hash] opts the optional parameters
    # @return [Array<(SecretBundle, Fixnum, Hash)>] SecretBundle data, response status code and response headers
    def get_secret_with_http_info(secret_name, secret_version, api_version, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SecretsApi.get_secret ...'
      end
      # verify the required parameter 'secret_name' is set
      if @api_client.config.client_side_validation && secret_name.nil?
        fail ArgumentError, "Missing the required parameter 'secret_name' when calling SecretsApi.get_secret"
      end
      # verify the required parameter 'secret_version' is set
      if @api_client.config.client_side_validation && secret_version.nil?
        fail ArgumentError, "Missing the required parameter 'secret_version' when calling SecretsApi.get_secret"
      end
      # verify the required parameter 'api_version' is set
      if @api_client.config.client_side_validation && api_version.nil?
        fail ArgumentError, "Missing the required parameter 'api_version' when calling SecretsApi.get_secret"
      end
      # resource path
      local_var_path = '/secrets/{secret-name}/{secret-version}'.sub('{' + 'secret-name' + '}', secret_name.to_s).sub('{' + 'secret-version' + '}', secret_version.to_s)

      # query parameters
      query_params = {}
      query_params[:'api-version'] = api_version

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SecretBundle')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SecretsApi#get_secret\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # List all versions of the specified secret.
    # The full secret identifier and attributes are provided in the response. No values are returned for the secrets. This operations requires the secrets/list permission.
    # @param secret_name The name of the secret.
    # @param api_version Client API version.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :maxresults Maximum number of results to return in a page. If not specified, the service will return up to 25 results.
    # @return [SecretListResult]
    def get_secret_versions(secret_name, api_version, opts = {})
      data, _status_code, _headers = get_secret_versions_with_http_info(secret_name, api_version, opts)
      data
    end

    # List all versions of the specified secret.
    # The full secret identifier and attributes are provided in the response. No values are returned for the secrets. This operations requires the secrets/list permission.
    # @param secret_name The name of the secret.
    # @param api_version Client API version.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :maxresults Maximum number of results to return in a page. If not specified, the service will return up to 25 results.
    # @return [Array<(SecretListResult, Fixnum, Hash)>] SecretListResult data, response status code and response headers
    def get_secret_versions_with_http_info(secret_name, api_version, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SecretsApi.get_secret_versions ...'
      end
      # verify the required parameter 'secret_name' is set
      if @api_client.config.client_side_validation && secret_name.nil?
        fail ArgumentError, "Missing the required parameter 'secret_name' when calling SecretsApi.get_secret_versions"
      end
      # verify the required parameter 'api_version' is set
      if @api_client.config.client_side_validation && api_version.nil?
        fail ArgumentError, "Missing the required parameter 'api_version' when calling SecretsApi.get_secret_versions"
      end
      if @api_client.config.client_side_validation && !opts[:'maxresults'].nil? && opts[:'maxresults'] > 25
        fail ArgumentError, 'invalid value for "opts[:"maxresults"]" when calling SecretsApi.get_secret_versions, must be smaller than or equal to 25.'
      end

      if @api_client.config.client_side_validation && !opts[:'maxresults'].nil? && opts[:'maxresults'] < 1
        fail ArgumentError, 'invalid value for "opts[:"maxresults"]" when calling SecretsApi.get_secret_versions, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/secrets/{secret-name}/versions'.sub('{' + 'secret-name' + '}', secret_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'api-version'] = api_version
      query_params[:'maxresults'] = opts[:'maxresults'] if !opts[:'maxresults'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SecretListResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SecretsApi#get_secret_versions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # List secrets in a specified key vault.
    # The Get Secrets operation is applicable to the entire vault. However, only the base secret identifier and its attributes are provided in the response. Individual secret versions are not listed in the response. This operation requires the secrets/list permission.
    # @param api_version Client API version.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :maxresults Maximum number of results to return in a page. If not specified, the service will return up to 25 results.
    # @return [SecretListResult]
    def get_secrets(api_version, opts = {})
      data, _status_code, _headers = get_secrets_with_http_info(api_version, opts)
      data
    end

    # List secrets in a specified key vault.
    # The Get Secrets operation is applicable to the entire vault. However, only the base secret identifier and its attributes are provided in the response. Individual secret versions are not listed in the response. This operation requires the secrets/list permission.
    # @param api_version Client API version.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :maxresults Maximum number of results to return in a page. If not specified, the service will return up to 25 results.
    # @return [Array<(SecretListResult, Fixnum, Hash)>] SecretListResult data, response status code and response headers
    def get_secrets_with_http_info(api_version, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SecretsApi.get_secrets ...'
      end
      # verify the required parameter 'api_version' is set
      if @api_client.config.client_side_validation && api_version.nil?
        fail ArgumentError, "Missing the required parameter 'api_version' when calling SecretsApi.get_secrets"
      end
      if @api_client.config.client_side_validation && !opts[:'maxresults'].nil? && opts[:'maxresults'] > 25
        fail ArgumentError, 'invalid value for "opts[:"maxresults"]" when calling SecretsApi.get_secrets, must be smaller than or equal to 25.'
      end

      if @api_client.config.client_side_validation && !opts[:'maxresults'].nil? && opts[:'maxresults'] < 1
        fail ArgumentError, 'invalid value for "opts[:"maxresults"]" when calling SecretsApi.get_secrets, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/secrets'

      # query parameters
      query_params = {}
      query_params[:'api-version'] = api_version
      query_params[:'maxresults'] = opts[:'maxresults'] if !opts[:'maxresults'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SecretListResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SecretsApi#get_secrets\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Restores a backed up secret to a vault.
    # Restores a backed up secret, and all its versions, to a vault. This operation requires the secrets/restore permission.
    # @param parameters The parameters to restore the secret.
    # @param api_version Client API version.
    # @param [Hash] opts the optional parameters
    # @return [SecretBundle]
    def restore_secret(parameters, api_version, opts = {})
      data, _status_code, _headers = restore_secret_with_http_info(parameters, api_version, opts)
      data
    end

    # Restores a backed up secret to a vault.
    # Restores a backed up secret, and all its versions, to a vault. This operation requires the secrets/restore permission.
    # @param parameters The parameters to restore the secret.
    # @param api_version Client API version.
    # @param [Hash] opts the optional parameters
    # @return [Array<(SecretBundle, Fixnum, Hash)>] SecretBundle data, response status code and response headers
    def restore_secret_with_http_info(parameters, api_version, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SecretsApi.restore_secret ...'
      end
      # verify the required parameter 'parameters' is set
      if @api_client.config.client_side_validation && parameters.nil?
        fail ArgumentError, "Missing the required parameter 'parameters' when calling SecretsApi.restore_secret"
      end
      # verify the required parameter 'api_version' is set
      if @api_client.config.client_side_validation && api_version.nil?
        fail ArgumentError, "Missing the required parameter 'api_version' when calling SecretsApi.restore_secret"
      end
      # resource path
      local_var_path = '/secrets/restore'

      # query parameters
      query_params = {}
      query_params[:'api-version'] = api_version

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(parameters)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SecretBundle')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SecretsApi#restore_secret\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Sets a secret in a specified key vault.
    #  The SET operation adds a secret to the Azure Key Vault. If the named secret already exists, Azure Key Vault creates a new version of that secret. This operation requires the secrets/set permission.
    # @param secret_name The name of the secret.
    # @param parameters The parameters for setting the secret.
    # @param api_version Client API version.
    # @param [Hash] opts the optional parameters
    # @return [SecretBundle]
    def set_secret(secret_name, parameters, api_version, opts = {})
      data, _status_code, _headers = set_secret_with_http_info(secret_name, parameters, api_version, opts)
      data
    end

    # Sets a secret in a specified key vault.
    #  The SET operation adds a secret to the Azure Key Vault. If the named secret already exists, Azure Key Vault creates a new version of that secret. This operation requires the secrets/set permission.
    # @param secret_name The name of the secret.
    # @param parameters The parameters for setting the secret.
    # @param api_version Client API version.
    # @param [Hash] opts the optional parameters
    # @return [Array<(SecretBundle, Fixnum, Hash)>] SecretBundle data, response status code and response headers
    def set_secret_with_http_info(secret_name, parameters, api_version, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SecretsApi.set_secret ...'
      end
      # verify the required parameter 'secret_name' is set
      if @api_client.config.client_side_validation && secret_name.nil?
        fail ArgumentError, "Missing the required parameter 'secret_name' when calling SecretsApi.set_secret"
      end
      if @api_client.config.client_side_validation && secret_name !~ Regexp.new(/^[0-9a-zA-Z-]+$/)
        fail ArgumentError, "invalid value for 'secret_name' when calling SecretsApi.set_secret, must conform to the pattern /^[0-9a-zA-Z-]+$/."
      end

      # verify the required parameter 'parameters' is set
      if @api_client.config.client_side_validation && parameters.nil?
        fail ArgumentError, "Missing the required parameter 'parameters' when calling SecretsApi.set_secret"
      end
      # verify the required parameter 'api_version' is set
      if @api_client.config.client_side_validation && api_version.nil?
        fail ArgumentError, "Missing the required parameter 'api_version' when calling SecretsApi.set_secret"
      end
      # resource path
      local_var_path = '/secrets/{secret-name}'.sub('{' + 'secret-name' + '}', secret_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'api-version'] = api_version

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(parameters)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SecretBundle')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SecretsApi#set_secret\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Updates the attributes associated with a specified secret in a given key vault.
    # The UPDATE operation changes specified attributes of an existing stored secret. Attributes that are not specified in the request are left unchanged. The value of a secret itself cannot be changed. This operation requires the secrets/set permission.
    # @param secret_name The name of the secret.
    # @param secret_version The version of the secret.
    # @param parameters The parameters for update secret operation.
    # @param api_version Client API version.
    # @param [Hash] opts the optional parameters
    # @return [SecretBundle]
    def update_secret(secret_name, secret_version, parameters, api_version, opts = {})
      data, _status_code, _headers = update_secret_with_http_info(secret_name, secret_version, parameters, api_version, opts)
      data
    end

    # Updates the attributes associated with a specified secret in a given key vault.
    # The UPDATE operation changes specified attributes of an existing stored secret. Attributes that are not specified in the request are left unchanged. The value of a secret itself cannot be changed. This operation requires the secrets/set permission.
    # @param secret_name The name of the secret.
    # @param secret_version The version of the secret.
    # @param parameters The parameters for update secret operation.
    # @param api_version Client API version.
    # @param [Hash] opts the optional parameters
    # @return [Array<(SecretBundle, Fixnum, Hash)>] SecretBundle data, response status code and response headers
    def update_secret_with_http_info(secret_name, secret_version, parameters, api_version, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SecretsApi.update_secret ...'
      end
      # verify the required parameter 'secret_name' is set
      if @api_client.config.client_side_validation && secret_name.nil?
        fail ArgumentError, "Missing the required parameter 'secret_name' when calling SecretsApi.update_secret"
      end
      # verify the required parameter 'secret_version' is set
      if @api_client.config.client_side_validation && secret_version.nil?
        fail ArgumentError, "Missing the required parameter 'secret_version' when calling SecretsApi.update_secret"
      end
      # verify the required parameter 'parameters' is set
      if @api_client.config.client_side_validation && parameters.nil?
        fail ArgumentError, "Missing the required parameter 'parameters' when calling SecretsApi.update_secret"
      end
      # verify the required parameter 'api_version' is set
      if @api_client.config.client_side_validation && api_version.nil?
        fail ArgumentError, "Missing the required parameter 'api_version' when calling SecretsApi.update_secret"
      end
      # resource path
      local_var_path = '/secrets/{secret-name}/{secret-version}'.sub('{' + 'secret-name' + '}', secret_name.to_s).sub('{' + 'secret-version' + '}', secret_version.to_s)

      # query parameters
      query_params = {}
      query_params[:'api-version'] = api_version

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(parameters)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SecretBundle')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SecretsApi#update_secret\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end