=begin
#White Label Communications CPaas API Documentation

#A CPaaS platform API

The version of the OpenAPI document: 1.1
Contact: support@whitelabelcomm.com
Generated by: https://openapi-generator.tech
Generator version: 7.11.0-SNAPSHOT

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for OpenapiClient::ServiceVOIPCallQueueRecipientLoginLogoutData
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe OpenapiClient::ServiceVOIPCallQueueRecipientLoginLogoutData do
  let(:instance) { OpenapiClient::ServiceVOIPCallQueueRecipientLoginLogoutData.new }

  describe 'test an instance of ServiceVOIPCallQueueRecipientLoginLogoutData' do
    it 'should create an instance of ServiceVOIPCallQueueRecipientLoginLogoutData' do
      # uncomment below to test the instance creation
      #expect(instance).to be_instance_of(OpenapiClient::ServiceVOIPCallQueueRecipientLoginLogoutData)
    end
  end

  describe 'test attribute "action"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["login", "logout"])
      # validator.allowable_values.each do |value|
      #   expect { instance.action = value }.not_to raise_error
      # end
    end
  end

end
