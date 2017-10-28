class Customer < ApplicationRecord
require 'json'
require 'open-uri'
has_many :wines


 	def should_send?(user_id)
 		api_key = AUTH_DETAILS['api_key']
		user = Hash.new
		customer = Customer.find(user_id)
		#here we made the API call with the customer's zipcode
		open("http://api.wunderground.com/api/#{api_key}/forecast/q/#{customer.zipcode}.json") do |f|
 	  		json_string = f.read
 	  		parsed_json = JSON.parse(json_string)
 	 		@info = parsed_json['forecast']['txt_forecast']['forecastday']	
 		end
   			#here we iterate through the response and use a regex to identify the temperature numbers from the rest of the data
   		@info.each do |report|	
		 	txt= report['fcttext']
			re1='.*?'	# Non-greedy match on filler
			re2='(\\d+)'	# Integer Number 1
			re3='(F)'	# Any Single Word Character (Not Whitespace) 1
			re=(re1+re2+re3)
			forecast = []
	 			m=Regexp.new(re,Regexp::IGNORECASE);
				if m.match(txt)
		 	    	int1=m.match(txt)[1];
	 		 	    w1=m.match(txt)[2];
	 		 		forecast  << int1.to_i
			 	end	
		 	#here goes iteration that checks the range of the temperatures in the city

		 		forecast.each do |n|
		 			if n.between?(40,80)		
		 				p	'CAN SHIP'
		 			else
		 				p   'CANT SHIP'
		 		end
		 	end

 		end
   	end
 
end
