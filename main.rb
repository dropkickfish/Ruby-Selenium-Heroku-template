require 'selenium-webdriver'
require "uri"
require "net/http"

options = Selenium::WebDriver::Chrome::Options.new
options.add_argument('--headless') # set chrome to headless mode
default_directory = "/" # only necessary for downloads folder if required
options.add_preference('download.default_directory', default_directory)
client = Selenium::WebDriver::Remote::Http::Default.new
client.read_timeout = 120 # prevent timeout
driver = Selenium::WebDriver.for :chrome, http_client: client , options: options

driver.navigate.to ''
driver.find_element(name: 'email').send_keys ENV['USERNAME'] # ENV vars for sensitive info
driver.find_element(name: 'password').send_keys ENV['PASSWORD']
driver.find_element(css: '.success').click
driver.navigate.to ''

driver.quit # remember to quit the driver and save dyno resources
