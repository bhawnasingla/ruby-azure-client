=begin
#KeyVaultClient

#The key vault client performs cryptographic key operations and vault operations against the Key Vault service.

OpenAPI spec version: 7.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.15

=end

require 'spec_helper'
require 'json'

# Unit tests for SwaggerClient::DeletedStorageApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'DeletedStorageApi' do
  before do
    # run before each test
    @instance = SwaggerClient::DeletedStorageApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of DeletedStorageApi' do
    it 'should create an instance of DeletedStorageApi' do
      expect(@instance).to be_instance_of(SwaggerClient::DeletedStorageApi)
    end
  end

  # unit tests for get_deleted_sas_definition
  # Gets the specified deleted sas definition.
  # The Get Deleted SAS Definition operation returns the specified deleted SAS definition along with its attributes. This operation requires the storage/getsas permission.
  # @param storage_account_name The name of the storage account.
  # @param sas_definition_name The name of the SAS definition.
  # @param api_version Client API version.
  # @param [Hash] opts the optional parameters
  # @return [DeletedSasDefinitionBundle]
  describe 'get_deleted_sas_definition test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_deleted_sas_definitions
  # Lists deleted SAS definitions for the specified vault and storage account.
  # The Get Deleted Sas Definitions operation returns the SAS definitions that have been deleted for a vault enabled for soft-delete. This operation requires the storage/listsas permission.
  # @param storage_account_name The name of the storage account.
  # @param api_version Client API version.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :maxresults Maximum number of results to return in a page. If not specified the service will return up to 25 results.
  # @return [DeletedSasDefinitionListResult]
  describe 'get_deleted_sas_definitions test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_deleted_storage_account
  # Gets the specified deleted storage account.
  # The Get Deleted Storage Account operation returns the specified deleted storage account along with its attributes. This operation requires the storage/get permission.
  # @param storage_account_name The name of the storage account.
  # @param api_version Client API version.
  # @param [Hash] opts the optional parameters
  # @return [DeletedStorageBundle]
  describe 'get_deleted_storage_account test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_deleted_storage_accounts
  # Lists deleted storage accounts for the specified vault.
  # The Get Deleted Storage Accounts operation returns the storage accounts that have been deleted for a vault enabled for soft-delete. This operation requires the storage/list permission.
  # @param api_version Client API version.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :maxresults Maximum number of results to return in a page. If not specified the service will return up to 25 results.
  # @return [DeletedStorageListResult]
  describe 'get_deleted_storage_accounts test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for purge_deleted_storage_account
  # Permanently deletes the specified storage account.
  # The purge deleted storage account operation removes the secret permanently, without the possibility of recovery. This operation can only be performed on a soft-delete enabled vault. This operation requires the storage/purge permission.
  # @param storage_account_name The name of the storage account.
  # @param api_version Client API version.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'purge_deleted_storage_account test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for recover_deleted_sas_definition
  # Recovers the deleted SAS definition.
  # Recovers the deleted SAS definition for the specified storage account. This operation can only be performed on a soft-delete enabled vault. This operation requires the storage/recover permission.
  # @param storage_account_name The name of the storage account.
  # @param sas_definition_name The name of the SAS definition.
  # @param api_version Client API version.
  # @param [Hash] opts the optional parameters
  # @return [SasDefinitionBundle]
  describe 'recover_deleted_sas_definition test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for recover_deleted_storage_account
  # Recovers the deleted storage account.
  # Recovers the deleted storage account in the specified vault. This operation can only be performed on a soft-delete enabled vault. This operation requires the storage/recover permission.
  # @param storage_account_name The name of the storage account.
  # @param api_version Client API version.
  # @param [Hash] opts the optional parameters
  # @return [StorageBundle]
  describe 'recover_deleted_storage_account test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
