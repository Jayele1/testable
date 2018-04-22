require "capybara/cucumber"
require "selenium-webdriver"

Capybara.configure do |config|
  config.run_server = false
  config.default_driver = :selenium_chrome
  config.app_host = "http://takehome.zeachable.com"
#Capybara.default_max_wait_time = 10
end