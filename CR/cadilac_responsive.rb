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


$b.goto "http://www.daregreatly.com/explore/culture/visual-art/latoya-ruby-frazier"
end 



puts setupBrowserStack

i=0;
csv_text = File.read('url.csv',encoding: "iso-8859-1:UTF-8")
csv = CSV.parse(csv_text, :headers => true)
csv.each do |row|  
sleep 4
url= "#{row['url']}"
$b.goto url

csv_text = File.read('cadilac_responsive.csv',encoding: "iso-8859-1:UTF-8")
csv = CSV.parse(csv_text, :headers => true)
csv.each do |row|  
sleep 4
loc1= "#{row['sizeA']}"
loc2= "#{row['sizeB']}"
loc3= "#{row['device']}"

sleep 5
puts loc1

$b.window.resize_to(loc1, loc2)
i+=1
sleep 2

$b.screenshot.save <<i<<"_"<<loc1<<"x"loc2<<".png"


sleep 2




end

end






 


$b.quit

