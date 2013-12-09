require 'capybara/basic_auth_helper'

RSpec.configure do |c|
  c.include Capybara::BasicAuthHelper, :type => :feature
end
