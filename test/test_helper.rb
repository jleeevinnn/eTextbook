ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all
describe Chapter do
  it { should have_many :sections }
end

describe Section do
  it { should belong_to :chapter }
end1
  # Add more helper methods to be used by all tests here...
end
