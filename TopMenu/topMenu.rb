require 'watir-webdriver'
require 'webdriver-user-agent'
require 'csv'
require 'watir-scroll'
require 'time'




 

def setupBrowserStack

include Selenium

caps = WebDriver::Remote::Capabilities.new
caps[:os] = "Windows"
caps[:name] = "Watir WebDriver"
caps[:browser] = "firefox"
caps[:browser_version] = "20"
caps["browserstack.debug"] = "true"

$b= Watir::Browser.new(:remote,
  :url => "http://zaqwsx1:Fs54nwmULt7BaSTosZxi@hub.browserstack.com/wd/hub",
  :desired_capabilities => caps)


$b.goto "http://www.daregreatly.com/"
end 



puts setupBrowserStack

i=0;

set = 50


$b.window.resize_to(605, 937)


	 sleep 2

while set < 501 do 
puts "Inside loop "<<set
$b.window.resize_to(605+set, 937)
sleep 2
 $b.element(:css => "a.header-dropdown-current-choice").click
 sleep 2
$b.screenshot.save i.to_s<<"_"<<set<<"x"<<937<<".png"

set+=50

end
















 


$b.quit

