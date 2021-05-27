require 'spec_helper'
require 'json'

# Unit tests for Phrase::NotificationGroupsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'NotificationGroupsApi' do
  before do
    # run before each test
    @api_instance = Phrase::NotificationGroupsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of NotificationGroupsApi' do
    it 'should create an instance of NotificationGroupsApi' do
      expect(@api_instance).to be_instance_of(Phrase::NotificationGroupsApi)
    end
  end

  # unit tests for notification_groups_list
  # List notification groups
  # List all notification groups from the current user
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
  # @option opts [Integer] :page Page number
  # @option opts [Integer] :per_page allows you to specify a page size up to 100 items, 25 by default
  # @return [Array<NotificationGroupDetail>]
  describe 'notification_groups_list test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
