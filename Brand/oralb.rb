require 'watir-webdriver'
require 'webdriver-user-agent'
require 'csv'
require 'watir-scroll'
require 'mechanize'
require 'appium_lib'


driver  = Watir::Browser.new :firefox

csv_text = File.read('oralb.csv')
csv = CSV.parse(csv_text, :headers => true)
csv.each do |row|  
sleep 4
loc1= "#{row['url']}"
#loc2= "#{row['product']}"
#loc3= "#{row['type']}"
#loc4= "#{row['count']}"

sleep 5

driver.goto loc1
sleep 9

sleep 4


#browser.scroll.to [0,850]
#sleep 4
driver.screenshot.save "Screenshot/#{Time.now.strftime("write_empty_%d_%m_%Y__%H_%M_%S")}.png"

end