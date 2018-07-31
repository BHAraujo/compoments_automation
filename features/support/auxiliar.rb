require 'selenium-webdriver'

def wait_element
  Selenium::WebDriver::Wait.new(:timeout => 30)
end
