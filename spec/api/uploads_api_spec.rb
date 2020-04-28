require 'spec_helper'
require 'json'

# Unit tests for Phrase::UploadsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'UploadsApi' do
  before do
    # run before each test
    @api_instance = Phrase::UploadsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of UploadsApi' do
    it 'should create an instance of UploadsApi' do
      expect(@api_instance).to be_instance_of(Phrase::UploadsApi)
    end
  end

  # unit tests for upload_create
  # Upload a new file
  # Upload a new language file. Creates necessary resources in your project.
  # @param project_id Project ID
  # @param upload_create_parameters 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
  # @return [nil]
  describe 'upload_create test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for upload_show
  # View upload details
  # View details and summary for a single upload.
  # @param project_id Project ID
  # @param id ID
  # @param upload_show_parameters 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
  # @return [Upload]
  describe 'upload_show test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for uploads_list
  # List uploads
  # List all uploads for the given project.
  # @param project_id Project ID
  # @param uploads_list_parameters 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
  # @option opts [Integer] :page Page number
  # @option opts [Integer] :per_page allows you to specify a page size up to 100 items, 10 by default
  # @return [Array<Object>]
  describe 'uploads_list test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
