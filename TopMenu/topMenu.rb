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

csv_text = File.read('cadilac_responsive.csv',encoding: "iso-8859-1:UTF-8")
csv = CSV.parse(csv_text, :headers => true)
csv.each do |row|  
sleep 4
loc1= "#{row['sizeA']}"
loc2= "#{row['sizeB']}"
loc3= "#{row['device']}"

$b.window.resize_to(loc1,loc2)
sleep 5
 $b.element(:css => "a.header-dropdown-current-choice").click
 sleep 5
$b.screenshot.save i.to_s<<"_"<<loc1<<"x"<<loc2<<".png"

set+=50

end
















 


$b.quit

