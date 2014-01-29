$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', '..', 'lib/pages/'))

require 'rubygems'
require 'rspec/expectations'
require "selenium-webdriver"
require 'page-object'
require 'page-object/page_factory'
require 'require_all'
require 'headless'
require 'capybara/cucumber'
require 'capybara-webkit'

# Capybara.register_driver :webkit do |app|
#   Capybara::Webkit::Driver.new(app)
# end
Capybara.default_driver = :webkit
Capybara.current_driver = :webkit
Capybara.javascript_driver = :webkit
# Capybara.register_driver :selenium_firefox do |app|
#   Capybara::Selenium::Driver.new(app)
# end
# Capybara.default_driver = :selenium

Capybara.app_host = "http://localhost:3000"
Capybara.default_wait_time = 5
