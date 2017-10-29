class CustomersController < ApplicationController

	def index
		for i in 1..Customer.count
			customer = Customer.find_by_id(i).should_send?(i)	
		end
	@ready = Customer.where(can_send?:true)
	@not_ready = Customer.where(can_send?:false)
	end
end
