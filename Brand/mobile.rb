require 'rubygems'
require 'watir-webdriver'

include Selenium

caps = WebDriver::Remote::Capabilities.new
caps[:browserName] = 'android'
caps[:platform] = 'ANDROID'
caps['device'] = 'Samsung Galaxy S3'
caps["browserstack.debug"] = "true"
caps["browserstack.local"] = "true"
caps['acceptSslCerts'] = 'true'

browser = Watir::Browser.new(:remote,
  :url => "http://zaqwsx1:Fs54nwmULt7BaSTosZxi@hub.browserstack.com/wd/hub",
  :desired_capabilities => caps)

browser.goto "http://author.crestca.pgsitecore.com/en-ca"

puts browser.title
browser.screenshot.save browser.title<<".png"
browser.quit