# Importando as bibliotecas para ficarem disponíveis na execução dos testes
require 'capybara'
require 'capybara/cucumber'
require 'capybara/rspec'
require 'selenium-webdriver'
require 'site_prism'
require 'site_prism/all_there'

BROWSER = ENV['BROWSER']

if BROWSER.eql?('chrome')
    # Registrando o driver
    Capybara.register_driver :site_prism do |app|
      Capybara::Selenium::Driver.new(app, browser: :chrome)  # Vamos utilizar o navegador chrome
    end
end

# Configurando o driver
Capybara.configure do |config|
  Capybara.default_driver = :site_prism
  # Capybara.page.driver.browser.manage.window.maximize  # Maximizando a tela
  config.default_max_wait_time = 30  # Tempo máximo que a automação vai esperar para a página carregar ou esperar um elemento
  config.app_host = 'https://beon.studio' # URL base que vamos utilizar
end