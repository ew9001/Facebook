require 'rubygems'
require 'watir-webdriver'

include Selenium

caps = WebDriver::Remote::Capabilities.new
caps[:browserName] = 'android'
caps[:platform] = 'ANDROID'
caps['device'] = 'Samsung Galaxy S3'
caps["browserstack.debug"] = "true"
caps["browserstack.local"] = "true"

browser = Watir::Browser.new(:remote,
  :url => "http://zaqwsx1:Fs54nwmULt7BaSTosZxi@hub.browserstack.com/wd/hub",
  :desired_capabilities => caps)

browser.goto "https://author.crestca.pgsitecore.com/en-ca/products/toothpaste?#viewtype:gridview/facets:collection=crest-sensi/category:toothpaste"

puts browser.title
browser.screenshot.save browser.title<<".png"
browser.quit