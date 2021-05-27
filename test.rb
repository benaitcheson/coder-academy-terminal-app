require 'uri'
require 'net/http'
require 'openssl'

url = URI("https://edamam-recipe-search.p.rapidapi.com/search?q=chicken")

http = Net::HTTP.new(url.host, url.port)
http.use_ssl = true
http.verify_mode = OpenSSL::SSL::VERIFY_NONE

request = Net::HTTP::Get.new(url)
request["x-rapidapi-key"] = '54b589ade0msh9a962dde82e2462p17b6c5jsnaec97a63dce2'
request["x-rapidapi-host"] = 'edamam-recipe-search.p.rapidapi.com'

response = http.request(request)
puts response.read_body

class StackExchange
    include HTTParty
    base_uri 'api.stackexchange.com'
  
    def initialize(service, page)
      @options = { query: { site: service, page: page } }
    end
  
    def questions
      self.class.get("/2.2/questions", @options)
    end
  
    def users
      self.class.get("/2.2/users", @options)
    end
  end
  
  stack_exchange = StackExchange.new("stackoverflow", 1)
  puts stack_exchange.questions
  puts stack_exchange.