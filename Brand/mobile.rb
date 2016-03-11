require 'rubygems'
require 'watir-webdriver'

include Selenium

caps = WebDriver::Remote::Capabilities.new
caps[:browserName] = 'iPhone'
caps[:platform] = 'MAC'
caps['device'] = 'iPhone 5'
caps["browserstack.debug"] = "true"
caps["browserstack.debug"] = "local"

browser = Watir::Browser.new(:remote,
  :url => "http://zaqwsx1:Fs54nwmULt7BaSTosZxi@hub.browserstack.com/wd/hub",
  :desired_capabilities => caps)

browser.goto "https://author.crestca.pgsitecore.com/en-ca/products/toothpaste?#viewtype:gridview/facets:collection=crest-sensi/category:toothpaste"

puts browser.title
browser.screenshot.save browser.title<<".png"
browser.quit