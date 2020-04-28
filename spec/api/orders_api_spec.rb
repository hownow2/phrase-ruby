require 'spec_helper'
require 'json'

# Unit tests for Phrase::OrdersApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'OrdersApi' do
  before do
    # run before each test
    @api_instance = Phrase::OrdersApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of OrdersApi' do
    it 'should create an instance of OrdersApi' do
      expect(@api_instance).to be_instance_of(Phrase::OrdersApi)
    end
  end

  # unit tests for order_confirm
  # Confirm an order
  # Confirm an existing order and send it to the provider for translation. Same constraints as for create.
  # @param project_id Project ID
  # @param id ID
  # @param order_confirm_parameters 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
  # @return [Object]
  describe 'order_confirm test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for order_create
  # Create a new order
  # Create a new order. Access token scope must include &lt;code&gt;orders.create&lt;/code&gt;.
  # @param project_id Project ID
  # @param order_create_parameters 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
  # @return [nil]
  describe 'order_create test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for order_delete
  # Cancel an order
  # Cancel an existing order. Must not yet be confirmed.
  # @param project_id Project ID
  # @param id ID
  # @param order_delete_parameters 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
  # @return [nil]
  describe 'order_delete test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for order_show
  # Get a single order
  # Get details on a single order.
  # @param project_id Project ID
  # @param id ID
  # @param order_show_parameters 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
  # @return [TranslationOrder]
  describe 'order_show test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for orders_list
  # List orders
  # List all orders for the given project.
  # @param project_id Project ID
  # @param orders_list_parameters 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
  # @option opts [Integer] :page Page number
  # @option opts [Integer] :per_page allows you to specify a page size up to 100 items, 10 by default
  # @return [Array<Object>]
  describe 'orders_list test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
