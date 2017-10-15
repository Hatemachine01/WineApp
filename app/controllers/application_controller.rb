class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
require 'net/http'
require 'json'

	def index

		api_key = AUTH_DETAILS['api_key']
		url = "http://api.openweathermap.org/data/2.5/weather?q=94040,US&APPID=#{api_key}"
		uri = URI(url)
		response = Net::HTTP.get(uri)
		parsed =	JSON.parse(response)
	end

end


