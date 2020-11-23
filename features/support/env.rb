require 'capybara'
require 'capybara/cucumber'
require 'capybara/rspec'
require 'capybara/dsl'
require 'pry'
require 'report_builder'
require 'rspec'
require 'site_prism'
require 'selenium-webdriver'
require_relative File.expand_path('../modules/pesquisa_unidade_module.rb', __dir__)


World Capybara::DSL


Capybara.configure do |config|
	case 
		ENV['BROWSER']
	when 'chrome'
		driver = :selenium_chrome
	when 'chrome-headless'
		driver = :selenium_chrome_headless
	when 'firefox'
		driver = :selenium
	when 'firefox-headless'
		driver = :selenium_headless
	else
		raise 'Opção de profile enviada não existe'
	end
	config.default_driver = driver
	config.default_max_wait_time = 15
end