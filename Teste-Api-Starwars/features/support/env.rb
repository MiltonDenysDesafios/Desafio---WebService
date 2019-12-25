require 'httparty'
require 'json'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
require 'rspec'
require 'ffi'
require 'pry'


CONFIG = YAML.load_file(File.dirname(__FILE__) + '/config/config.yml')

Capybara.configure do |config|

    config.default_driver = :selenium_chrome
    config.app_host = CONFIG['urls']['web']
    config.default_max_wait_time = 15
end