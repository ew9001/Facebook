require 'watir-webdriver'
require 'webdriver-user-agent'
require 'csv'
require 'watir-scroll'
require 'time'




 

def setupbrowserStack

include Selenium

caps = WebDriver::Remote::Capabilities.new
caps[:os] = "Windows"
caps[:name] = "Watir WebDriver"
caps[:$b] = "firefox"
caps[:$b_version] = "20"
caps["$bstack.debug"] = "true"

$b= Watir::browser.new(:remote,
  :url => "http://zaqwsx1:Fs54nwmULt7BaSTosZxi@hub.$bstack.com/wd/hub",
  :desired_capabilities => caps)


$b.goto "http://www.daregreatly.com/explore/culture/visual-art/latoya-ruby-frazier"
end 



puts setupbrowserStack

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
 $b.element(:css, "#242 > div.back > div.main-copy > div.the-dare").click
 $b.screenshot.save i.to_s<<"_"<<loc1<<"x"<<loc2<<".png"
 i+=1
    $b.element(:css, "div.close-x").click
    $b.element(:css, "#166 > div.back").click
    $b.element(:css, "div.close-x").click
    $b.element(:css, "#165 > div.back > div.main-copy > div.the-dare").click
     $b.screenshot.save i.to_s<<"_"<<loc1<<"x"<<loc2<<".png"
 i+=1
    $b.element(:css, "div.close-x").click
    $b.element(:css, "#167 > div.back > div.main-copy > div.dontyoudare").click
     $b.screenshot.save i.to_s<<"_"<<loc1<<"x"<<loc2<<".png"
 i+=1
    $b.element(:css, "div.close-x").click
    $b.element(:css, "#161 > div.back > div.main-copy > div.the-dare").click
     $b.screenshot.save i.to_s<<"_"<<loc1<<"x"<<loc2<<".png"
 i+=1
    $b.element(:css, "div.close-x").click
    $b.element(:css, "#164 > div.back").click
    $b.element(:css, "div.close-x").click
    $b.element(:css, "#145 > div.back").click
    $b.element(:css, "div.close-x").click
    $b.element(:css, "#134 > div.back").click
    $b.element(:css, "div.close-x").click
    $b.element(:css, "#144 > div.back").click
    $b.element(:css, "div.close-x").click



sleep 2




end

end






 


$b.quit

