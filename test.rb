require 'uri'
require 'net/http'
require 'openssl'



# Use this API to search recipes

url = URI("https://recipe-puppy.p.rapidapi.com/?i=onions")

http = Net::HTTP.new(url.host, url.port)
http.use_ssl = true
http.verify_mode = OpenSSL::SSL::VERIFY_NONE

request = Net::HTTP::Get.new(url)
request["x-rapidapi-key"] = '54b589ade0msh9a962dde82e2462p17b6c5jsnaec97a63dce2'
request["x-rapidapi-host"] = 'recipe-puppy.p.rapidapi.com'

response = http.request(request)
puts response.read_body
