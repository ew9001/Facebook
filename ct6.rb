require 'rubygems'
require 'watir-webdriver'

include Selenium

caps = WebDriver::Remote::Capabilities.new
caps[:os] = "Windows"
caps[:name] = "Watir WebDriver"
caps[:browser] = "firefox"
caps[:browser_version] = "44"
caps["browserstack.debug"] = "true"

browser = Watir::Browser.new(:remote,
  :url => "http://zaqwsx1:Fs54nwmULt7BaSTosZxi@hub.browserstack.com/wd/hub",
  :desired_capabilities => caps)

browser.goto "http://www.daregreatly.com/cadillac-ct6-inspired-by-you"
browser.driver.manage.window.maximize
sleep 5
browser.div(:class => 'close-button').click
sleep 5



    browser.element(:xpath, "//div[2]/div/div/div[2]/div/div/img").click
    browser.screenshot.save "CT6/#{Time.now.strftime("CT6_%d_%m_%Y__%H_%M_%S")}.png"
    browser.element(:xpath, "//div[2]/div/div/img").click
    browser.screenshot.save "CT6/#{Time.now.strftime("CT6_%d_%m_%Y__%H_%M_%S")}.png"
    browser.element(:xpath, "//div[2]/div/img").click
    browser.screenshot.save "CT6/#{Time.now.strftime("CT6_%d_%m_%Y__%H_%M_%S")}.png"
    browser.screenshot.save "CT6/#{Time.now.strftime("CT6_%d_%m_%Y__%H_%M_%S")}.png"
    browser.element(:xpath, "//div[2]/img").click
    browser.screenshot.save "CT6/#{Time.now.strftime("CT6_%d_%m_%Y__%H_%M_%S")}.png"
    browser.element(:xpath, "//div[2]/div/div/div[2]/div[2]/div/img").click
    browser.screenshot.save "CT6/#{Time.now.strftime("CT6_%d_%m_%Y__%H_%M_%S")}.png"
    browser.element(:xpath, "//div[3]/div[2]/img").click
    browser.screenshot.save "CT6/#{Time.now.strftime("CT6_%d_%m_%Y__%H_%M_%S")}.png"
    browser.element(:xpath, "//div[3]/div/img").click
    browser.screenshot.save "CT6/#{Time.now.strftime("CT6_%d_%m_%Y__%H_%M_%S")}.png"
    browser.element(:css, "i.fa.fa-refresh").click
    browser.screenshot.save "CT6/#{Time.now.strftime("CT6_%d_%m_%Y__%H_%M_%S")}.png"
    browser.element(:xpath, "//div[4]/div/div/div").click
    browser.screenshot.save "CT6/#{Time.now.strftime("CT6_%d_%m_%Y__%H_%M_%S")}.png"


puts browser.title
browser.screenshot.save "CT6/#{Time.now.strftime("CT6_%d_%m_%Y__%H_%M_%S")}.png"
browser.quit