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

# Unit tests for OpenapiClient::E911Api
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'E911Api' do
  before do
    # run before each test
    @api_instance = OpenapiClient::E911Api.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of E911Api' do
    it 'should create an instance of E911Api' do
      expect(@api_instance).to be_instance_of(OpenapiClient::E911Api)
    end
  end

  # unit tests for v1_e911_get
  # Get E911 List
  # Obtain e911 URIs associated with the provided account ID.
  # @param [Hash] opts the optional parameters
  # @return [ServiceDocE911URIsApiOutput]
  describe 'v1_e911_get test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for v1_e911_location_location_id_activate_put
  # Activate E911 Location
  # Edit the provision location.
  # @param location_id Location ID
  # @param [Hash] opts the optional parameters
  # @return [ServiceDocE911ActiveLocationOutput]
  describe 'v1_e911_location_location_id_activate_put test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for v1_e911_location_location_id_delete
  # Delete E911 Location
  # Remove the location.
  # @param location_id Location ID
  # @param [Hash] opts the optional parameters
  # @return [ServiceDocE911RemoveLocationOutput]
  describe 'v1_e911_location_location_id_delete test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for v1_e911_location_validate_put
  # Validate a Location
  # Validate the location details.
  # @param req_body location details
  # @param [Hash] opts the optional parameters
  # @return [ServiceDocE911ValidateLocationOutput]
  describe 'v1_e911_location_validate_put test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for v1_e911_phone_number_delete
  # Delete E911 Phone Number
  # Delete the e911 URI connected with the account URI.
  # @param phone_number Phone Number
  # @param [Hash] opts the optional parameters
  # @return [ServiceDocE911RemoveURIApiOutput]
  describe 'v1_e911_phone_number_delete test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for v1_e911_phone_number_location_active_get
  # Get Actvie Location for a Phone Number
  # Get the e911 location connected with the URI.
  # @param phone_number Phone Number
  # @param [Hash] opts the optional parameters
  # @return [ServiceDocE911ActiveLocationURIApiOutput]
  describe 'v1_e911_phone_number_location_active_get test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for v1_e911_phone_number_location_get
  # Get Location List for Phone Number
  # Access a list of the e911 locations associated with the provided URI.
  # @param phone_number Phone Number
  # @param [Hash] opts the optional parameters
  # @return [ServiceDocE911LocationsURIApiOutput]
  describe 'v1_e911_phone_number_location_get test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for v1_e911_post
  # Create an E911 Location
  # Enter new location details.
  # @param req_body location details
  # @param [Hash] opts the optional parameters
  # @return [ServiceDocE911AddLocationOutput]
  describe 'v1_e911_post test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
