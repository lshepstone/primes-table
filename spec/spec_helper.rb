ENV['PATH'] = "#{File.expand_path('../../bin', __FILE__)}#{File::PATH_SEPARATOR}#{ENV['PATH']}"

require 'aruba'
require 'aruba/api'

RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.include Aruba::Api
end
