require 'selenium-webdriver'
require 'capybara'
require 'capybara/cucumber'
require 'rspec'
require 'sqlite3'

Capybara.configure do |c|
  c.default_driver = :selenium_chrome_headless
  c.app_host = 'http://127.0.0.1:3000'
end

Capybara.default_max_wait_time = 10

# DB = SQLite3::Database.new 'db/development.sqlite3'
