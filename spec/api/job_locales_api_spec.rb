require 'spec_helper'
require 'json'

# Unit tests for Phrase::JobLocalesApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'JobLocalesApi' do
  before do
    # run before each test
    @api_instance = Phrase::JobLocalesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of JobLocalesApi' do
    it 'should create an instance of JobLocalesApi' do
      expect(@api_instance).to be_instance_of(Phrase::JobLocalesApi)
    end
  end

  # unit tests for job_locale_complete
  # Complete a job locale
  # Mark a job locale as completed.
  # @param project_id Project ID
  # @param job_id Job ID
  # @param id ID
  # @param job_locale_complete_parameters 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
  # @return [JobLocale]
  describe 'job_locale_complete test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for job_locale_delete
  # Delete a job locale
  # Delete an existing job locale.
  # @param project_id Project ID
  # @param job_id Job ID
  # @param id ID
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
  # @option opts [String] :branch specify the branch to use
  # @return [nil]
  describe 'job_locale_delete test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for job_locale_reopen
  # Reopen a job locale
  # Mark a job locale as uncompleted.
  # @param project_id Project ID
  # @param job_id Job ID
  # @param id ID
  # @param job_locale_reopen_parameters 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
  # @return [JobLocale]
  describe 'job_locale_reopen test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for job_locale_show
  # Get a single job locale
  # Get a single job locale for a given job.
  # @param project_id Project ID
  # @param job_id Job ID
  # @param id ID
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
  # @option opts [String] :branch specify the branch to use
  # @return [JobLocale]
  describe 'job_locale_show test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for job_locale_update
  # Update a job locale
  # Update an existing job locale.
  # @param project_id Project ID
  # @param job_id Job ID
  # @param id ID
  # @param job_locale_update_parameters 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
  # @return [JobLocale]
  describe 'job_locale_update test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for job_locales_create
  # Create a job locale
  # Create a new job locale.
  # @param project_id Project ID
  # @param job_id Job ID
  # @param job_locales_create_parameters 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
  # @return [JobLocale]
  describe 'job_locales_create test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for job_locales_list
  # List job locales
  # List all job locales for a given job.
  # @param project_id Project ID
  # @param job_id Job ID
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
  # @option opts [Integer] :page Page number
  # @option opts [Integer] :per_page allows you to specify a page size up to 100 items, 25 by default
  # @option opts [String] :branch specify the branch to use
  # @return [Array<JobLocale>]
  describe 'job_locales_list test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
