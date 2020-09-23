require 'spec_helper'
require 'json'

# Unit tests for Phrase::DocumentsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'DocumentsApi' do
  before do
    # run before each test
    @api_instance = Phrase::DocumentsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of DocumentsApi' do
    it 'should create an instance of DocumentsApi' do
      expect(@api_instance).to be_instance_of(Phrase::DocumentsApi)
    end
  end

  # unit tests for documents_list
  # List documents
  # List all documents the current user has access to.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
  # @option opts [Integer] :page Page number
  # @option opts [Integer] :per_page allows you to specify a page size up to 100 items, 25 by default
  # @return [Array<Document>]
  describe 'documents_list test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
