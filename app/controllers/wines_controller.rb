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
 	
 	method2(@user_response)
 	
 	end
 	
 	def method2(user_response)
    @user_response = user_response
	    user_response.each do |key1,value1|
	      
	       value1.each do |key2,value2|

	       for i in 0..6 do 
	       	 value2[i].each do |key3,value3|
	       		p value3
	       	 end
	       	end

	       end

	    end

 	end
 	
end



	#for e in 1..Customer.count
		# 	p user_response[e][e][e]['fcttext']
		# end







# 	def index
# 	 i = Customer.count
#    	 response = []
	   
# 	   	 for n in 1..i do 
# 		    customer = Customer.find_by_id(n)
# 			zipcode = customer.zipcode
# 			api_key = AUTH_DETAILS['api_key']
# 				open("http://api.wunderground.com/api/#{api_key}/forecast/q/#{zipcode}.json") do |f|
# 	  			json_string = f.read
# 	  			parsed_json = JSON.parse(json_string)
# 	  			parsed_json['customer_id'] = customer.id
# 	  			response <<  parsed_json['forecast']['txt_forecast']['forecastday'] #<< parsed_json['customer_id']	
#   			end
#   		end
	  	

#   		# for e in 0..i 
# 	  	# 	response.each do |report|
# 	  	# 	p report[e]['fcttext']
# 	  	# 	end
# 	  	# end



# 	 #  	 for e in 1..i do 	  
# 	 #  	 	response.each do |report|
# 	 #  			report[e]['fcttext']
# 	 #  	 		txt= report[e]['fcttext']
# 		# 		re1='.*?'	# Non-greedy match on filler
# 		# 		re2='(\\d+)'	# Integer Number 1
# 		# 		re3='(F)'	# Any Single Word Character (Not Whitespace) 1
# 		# 		re=(re1+re2+re3)
				
# 		# 		 forecast = []
# 		# 		 m=Regexp.new(re,Regexp::IGNORECASE);
					
# 		# 		 	if m.match(txt)
# 		# 		 	    int1=m.match(txt)[1];
# 		# 		 	    w1=m.match(txt)[2];
# 		# 		 		forecast  << int1
# 		# 		 	end	
# 		# 		 p forecast
# 	 #  	 		end
# 	 #  		 end
# 	 # 	end
# 	 # end



# 	  		  # for e in 0..5
			   
# 	  		  #  response[0].each do |report|

# 	  		  #  	p report

# 	  		  #  end
			     
	  		
# 			# 	  txt= array[e]['fcttext']
# 			# 	 re1='.*?'	# Non-greedy match on filler
# 			# 	 re2='(\\d+)'	# Integer Number 1
# 			# 	 re3='(F)'	# Any Single Word Character (Not Whitespace) 1
# 			# 	 re=(re1+re2+re3)
				
# 			# 	 forecast = []
# 			# 	 m=Regexp.new(re,Regexp::IGNORECASE);
					
# 			# 	 	if m.match(txt)
# 			# 	 	    int1=m.match(txt)[1];
# 			# 	 	    w1=m.match(txt)[2];
# 			# 	 		forecast  << int1
# 			# 	 	end	
# 			# 	# end
				
# 			# 	# p "HERE" * 50
# 			# 	# p forecast[0]
# 			# end
# 			# end
		 
	

