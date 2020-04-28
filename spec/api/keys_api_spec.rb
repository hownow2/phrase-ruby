require 'spec_helper'
require 'json'

# Unit tests for Phrase::KeysApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'KeysApi' do
  before do
    # run before each test
    @api_instance = Phrase::KeysApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of KeysApi' do
    it 'should create an instance of KeysApi' do
      expect(@api_instance).to be_instance_of(Phrase::KeysApi)
    end
  end

  # unit tests for key_create
  # Create a key
  # Create a new key.
  # @param project_id Project ID
  # @param key_create_parameters 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
  # @return [nil]
  describe 'key_create test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for key_delete
  # Delete a key
  # Delete an existing key.
  # @param project_id Project ID
  # @param id ID
  # @param key_delete_parameters 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
  # @return [nil]
  describe 'key_delete test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for key_show
  # Get a single key
  # Get details on a single key for a given project.
  # @param project_id Project ID
  # @param id ID
  # @param key_show_parameters 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
  # @return [TranslationKeyDetails]
  describe 'key_show test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for key_update
  # Update a key
  # Update an existing key.
  # @param project_id Project ID
  # @param id ID
  # @param key_update_parameters 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
  # @return [TranslationKeyDetails]
  describe 'key_update test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for keys_delete
  # Delete collection of keys
  # Delete all keys matching query. Same constraints as list. Please limit the number of affected keys to about 1,000 as you might experience timeouts otherwise.
  # @param project_id Project ID
  # @param keys_delete_parameters 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
  # @return [AffectedResources]
  describe 'keys_delete test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for keys_list
  # List keys
  # List all keys for the given project. Alternatively you can POST requests to /search.
  # @param project_id Project ID
  # @param keys_list_parameters 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
  # @option opts [Integer] :page Page number
  # @option opts [Integer] :per_page allows you to specify a page size up to 100 items, 10 by default
  # @return [Array<TranslationKey>]
  describe 'keys_list test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for keys_search
  # Search keys
  # Search keys for the given project matching query.
  # @param project_id Project ID
  # @param keys_search_parameters 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
  # @option opts [Integer] :page Page number
  # @option opts [Integer] :per_page allows you to specify a page size up to 100 items, 10 by default
  # @return [Array<TranslationKey>]
  describe 'keys_search test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for keys_tag
  # Add tags to collection of keys
  # Tags all keys matching query. Same constraints as list.
  # @param project_id Project ID
  # @param keys_tag_parameters 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
  # @return [AffectedResources]
  describe 'keys_tag test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for keys_untag
  # Remove tags from collection of keys
  # Removes specified tags from keys matching query.
  # @param project_id Project ID
  # @param keys_untag_parameters 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
  # @return [AffectedResources]
  describe 'keys_untag test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
