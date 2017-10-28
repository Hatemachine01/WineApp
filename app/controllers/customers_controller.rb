class CustomersController < ApplicationController

	def index
		for i in 1..Customer.count
			customer = Customer.find_by_id(i).should_send?(i)	
		end
	end
end
