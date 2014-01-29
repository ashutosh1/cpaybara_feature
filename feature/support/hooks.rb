require "selenium-webdriver"
require "selenium/client"
require 'net/http' 
require 'socket'
require 'headless'
require 'capybara/cucumber'
include DataMagic

Before do 
  visit('/')
end