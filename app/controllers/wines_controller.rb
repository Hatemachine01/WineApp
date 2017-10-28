class WinesController < ApplicationController
require 'json'
require 'open-uri'


	def index
	
	api_key = AUTH_DETAILS['api_key']
	@user_response = Hash.new {|h, k| h[k] = ''}
		for n in 1..Customer.count do 
			user = Hash.new
			customer = Customer.find_by_id(n)
			open("http://api.wunderground.com/api/#{api_key}/forecast/q/#{customer.zipcode}.json") do |f|
 	  			json_string = f.read
 	  			parsed_json = JSON.parse(json_string)
 	  			@info = parsed_json['forecast']['txt_forecast']['forecastday']		
 	  		end
 	  	 user[customer.id] = @info
 	  	 @user_response[n] = user	
   		end
 		end
 	
 	