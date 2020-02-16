# frozen_string_literal: true

# gems
require 'capybara'
require 'capybara/cucumber'
require 'capybara/dsl'
require 'capybara/rspec'
require 'site_prism'
require 'faker'
require 'report_builder'
require 'cpf_faker'

Capybara.configure do |config|
  config.app_host = 'https://www.facebook.com/'
  config.default_driver = :selenium_chrome
  config.default_max_wait_time = 2
  config.default_selector = :css
  config.ignore_hidden_elements = false
end
