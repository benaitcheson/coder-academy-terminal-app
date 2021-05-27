require 'uri'
require 'net/http'
require 'openssl'
require 'JSON'
require 'tty-prompt'



def api
    
    recipe_search = PROMPT.ask("What would you like to search for? >> ")
    
    url = URI("https://edamam-recipe-search.p.rapidapi.com/search?q=#{recipe_search}")

    http = Net::HTTP.new(url.host, url.port)
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_NONE

    request = Net::HTTP::Get.new(url)
    request["x-rapidapi-key"] = '54b589ade0msh9a962dde82e2462p17b6c5jsnaec97a63dce2'
    request["x-rapidapi-host"] = 'edamam-recipe-search.p.rapidapi.com'
    request["content-type"] = 'application/x-www-form-urlencoded'

    response = http.request(request)
    JSON.parse(response.read_body)

    puts response
end

api()

    
