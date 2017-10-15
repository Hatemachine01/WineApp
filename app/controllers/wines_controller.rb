class WinesController < ApplicationController
require 'net/http'
require 'json'

	def index
		api_key = AUTH_DETAILS['api_key']
		url = "http://api.openweathermap.org/data/2.5/weather?q=10451units=imperial,US&APPID=#{api_key}"
		uri = URI(url)
		response = Net::HTTP.get(uri)
		@parsed =	JSON.parse(response)

		 @wine = Wine.find(3)
		 @wine.temp	
		end






end

