require 'coveralls'
Coveralls.wear!('rails')

require 'simplecov'
require 'simplecov-lcov'
SimpleCov::Formatter::LcovFormatter.config do |c|
  c.lcov_file_name = 'lcov.info' # default: "YOUR_PROJECT_NAME.lcov"
  c.single_report_path = 'coverage/lcov/test/lcov.info'
end

ENV["RAILS_ENV"] ||= "test"
require_relative "../config/environment"
require "rails/test_help"

class ActiveSupport::TestCase
  # Run tests in parallel with specified workers
  parallelize(workers: :number_of_processors)

  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  # Add more helper methods to be used by all tests here...
end
