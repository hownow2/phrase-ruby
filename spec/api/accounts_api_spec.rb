require 'spec_helper'
require 'json'

# Unit tests for Phrase::AccountsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'AccountsApi' do
  before do
    # run before each test
    @api_instance = Phrase::AccountsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AccountsApi' do
    it 'should create an instance of AccountsApi' do
      expect(@api_instance).to be_instance_of(Phrase::AccountsApi)
    end
  end

  # unit tests for account_show
  # Get a single account
  # Get details on a single account.
  # @param id ID
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
  # @return [AccountDetails]
  describe 'account_show test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for accounts_list
  # List accounts
  # List all accounts the current user has access to.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
  # @option opts [Integer] :page Page number
  # @option opts [Integer] :per_page allows you to specify a page size up to 100 items, 25 by default
  # @return [Array<Account>]
  describe 'accounts_list test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
