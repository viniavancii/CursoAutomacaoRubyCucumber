require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
require 'capybara/dsl'
require_relative 'page_helper.rb'
require_relative 'helper.rb'

World(PageObjects) #posso utilizar o modulo criado em page_helper.rb no projeto todo
World(Helper)

AMBIENTE = ENV['AMBIENTE'] #homolog (visitar aquivo cucumber.yml)
#está carregando o arquivo .yaml e concatenando com outro arquivo
CONFIG = YAML.load_file(File.dirname(__FILE__) + "/ambientes/#{AMBIENTE}.yml") # AMBIENTE = (homolog.yml)

Capybara.configure do |config|
    config.default_driver = :selenium_chrome
    config.app_host = CONFIG['url_padrao'] #estou chamando a url que estão nos arquivos .yml de homol e prod
    #users diferentes para ambientes diferentes:
    #CONFIG['user']   -->  vai puxar o user do arquivo .yml especifico
    config.default_max_wait_time = 5
end