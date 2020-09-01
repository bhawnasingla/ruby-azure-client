=begin
#KeyVaultClient

#The key vault client performs cryptographic key operations and vault operations against the Key Vault service.

OpenAPI spec version: 7.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.15

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for SwaggerClient::Contacts
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'Contacts' do
  before do
    # run before each test
    @instance = SwaggerClient::Contacts.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of Contacts' do
    it 'should create an instance of Contacts' do
      expect(@instance).to be_instance_of(SwaggerClient::Contacts)
    end
  end
  describe 'test attribute "id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "contacts"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
