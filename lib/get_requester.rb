# Write your code here

require 'net/http' # used in method below
require 'open-uri' # library which helps Ruby to handle URIs
require 'json'

class GetRequester

    attr_accessor :url

    def initialize(url)
        @url = url
    end
        

    def get_response_body
        uri = URI.parse(url)
        response = Net::HTTP.get_response(uri)  # send an HTTP request from our program
        response.body
        # sends a GET request to the URL passed in on initialization. This method should return the body of the response.
    end


    def parse_json
        JSON.parse(self.get_response_body)
        # use get_response_body to send a request, then return a Ruby Array or Hash made up of data converted from the response of that request.
    end



end


