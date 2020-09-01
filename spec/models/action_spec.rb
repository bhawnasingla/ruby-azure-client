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

# Unit tests for SwaggerClient::Action
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'Action' do
  before do
    # run before each test
    @instance = SwaggerClient::Action.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of Action' do
    it 'should create an instance of Action' do
      expect(@instance).to be_instance_of(SwaggerClient::Action)
    end
  end
  describe 'test attribute "action_type"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["EmailContacts", "AutoRenew"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.action_type = value }.not_to raise_error
      # end
    end
  end

end