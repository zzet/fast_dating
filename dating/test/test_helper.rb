ENV["RAILS_ENV"] = "test"
ENV["COVERAGE"] = "true"
require 'simplecov'
SimpleCov.start('rails') if ENV["COVERAGE"]

require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require 'factory_girl_rails'
include FactoryGirl::Syntax::Methods

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.(yml|csv) for all tests in alphabetical order.
  #
  # Note: You'll currently still have to declare fixtures explicitly in integration tests
  # -- they do not yet inherit this setting
  #fixtures :all
  include AuthHelper
  # Add more helper methods to be used by all tests here...
end
