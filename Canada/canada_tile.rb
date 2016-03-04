require 'pismo'
require 'openssl'
OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE
page = Pismo::Document.new('https://author.crestca.pgsitecore.com/en-ca/products/crest-pro-health-stages-cars-toothpaste')
sleep 5
puts"Page title"
puts page.title
puts "Page Description"
puts page.description
puts "Page Keywords"
puts page.keywords


