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


end 

def loginFacebook(name,password)

$b.goto 'http://facebook.com'

sleep 4

$b.text_field(:name => 'email').set name
sleep 4
$b.text_field(:name => 'pass').set password
sleep 2
$b.button(:type=> 'submit').click
end

def loginTwitter(name,password)

$b.goto 'http://twitter.com'
sleep 2
$b.button(:type=> 'submit').click
sleep 2
$b.text_field(:name => 'session[username_or_email]').set name
sleep 4
$b.text_field(:name => 'session[password]').set password
sleep 2
$b.button(:value=> 'Log in').click

sleep 8

end

def useTwitter


	sleep 5
    $b.element(:css => "i.fa.fa-twitter").click

	sleep 5

		$b.window(:title => "Post a Tweet on Twitter").use do
		puts $b.url
		sleep 2
		$b.screenshot.save Time.now.utc.iso8601<<".png"

		sleep 2
		#$b.button(:value=> 'Tweet').click
		sleep 9
		end

end

def loginGooglePlus(name,password)

$b.goto 'http://gmail.com'
sleep 2

sleep 2
$b.text_field(:name => 'Email').set name
sleep 4
$b.button(:name=> 'signIn').click
sleep 2
$b.text_field(:name => 'Passwd').set password
sleep 2
$b.button(:value=> 'Sign in').click

sleep 8
$b.goto 'http://plus.google.com'
end 


def useGogolePlus


sleep 5
	
	sleep 5


    $b.element(:css => "fa fa-google-plus").click

		sleep 10


			$b.window(:title => "Share on Google+").use do
			puts $b.url
			sleep 2
			$b.screenshot.save Time.now.utc.iso8601<<".png"
			#$b.button(:text =>"Share").click


       		end


end


def useFacebook

	sleep 5
	button=$b.element(:css => "i.fa.fa-facebook")

	$b.scroll.to :center 
		sleep 5
    $b.element(:css => "i.fa.fa-facebook").click

		sleep 15


		
$b.screenshot.save Time.now.utc.iso8601<<"_facebook.png"
end


def socialScreenshots

$b.goto 'https://www.facebook.com/?sk=nf'

sleep 7


$b.screenshot.save Time.now.utc.iso8601<<".png"


sleep 5
$b.goto 'https://www.twitter.com/'

sleep 5

$b.screenshot.save Time.now.utc.iso8601<<".png"


sleep 5
$b.goto 'https://www.twitter.com/'

sleep 5

$b.screenshot.save Time.now.utc.iso8601<<".png"

end
puts setupBrowserStack
puts loginFacebook('pkt_zdesjro_qa@tfbnw.net','xswqaz')
#puts loginTwitter('pkt_qa','p@blicis!')
#puts loginGooglePlus('tester96010001@gmail.com','p@blicis!')

csv_text = File.read('danny.csv')
csv = CSV.parse(csv_text, :headers => true)
csv.each do |row|  
sleep 4
loc1= "#{row['url']}"

sleep 5
puts loc1

$b.goto  loc1

sleep 2
$b.screenshot.save Time.now.utc.iso8601<<".png"


sleep 2
puts "Click on Facebook icon"
puts useFacebook
puts "Click on Twitter icon"
puts useTwitter

sleep 5


end






puts socialScreenshots
 


$b.quit

