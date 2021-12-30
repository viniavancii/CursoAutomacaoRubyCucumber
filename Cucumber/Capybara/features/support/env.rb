#require 'capybara/cucumber'
require 'capybara'
require 'capybara/dsl' #adicionada para o e2e
require 'capybara/rspec/matchers' #adicionada para o e2e
require 'selenium-webdriver'

World(Capybara::DSL)  #adicionada para o e2e
World(Capybara::RSpecMatchers)  #adicionada para o e2e

Capybara.configure do |config|
    config.default_driver = :selenium_chrome
    config.app_host = 'https://automacaocombatista.herokuapp.com'
    config.default_max_wait_time = 5
end