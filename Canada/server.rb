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
caps[:browser_version] = "42"
caps["browserstack.debug"] = "true"

$b= Watir::Browser.new(:remote,
  :url => "http://zaqwsx1:Fs54nwmULt7BaSTosZxi@hub.browserstack.com/wd/hub",
  :desired_capabilities => caps)
$counter=0

end 












puts setupBrowserStack


csv_text = File.read('production.csv',encoding: "iso-8859-1:UTF-8")
csv = CSV.parse(csv_text, :headers => true)
csv.each do |row|  
sleep 4
loc1= "#{row['url']}"

sleep 5
puts loc1

$b.goto  loc1

sleep 2

$b.scroll.to :center 
		sleep 5
		$b.screenshot.save "server #"<<$b.title<<"_"<<$counter.to_s<<".png"
		sleep 5
    $b.element(:text=> "Cadillac.com/CT6.").click
sleep 5
$b.screenshot.save "title"<<$b.title<<$counter.to_s<<".png"


sleep 2



end







 


$b.quit

