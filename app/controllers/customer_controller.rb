class CustomerController < ApplicationController
	# layout false
	def index
	end

	def thank_you
	end

	def create

		@customer = Customer.new(customer_params)

		if @customer.save
			redirect_to @customer
		else
			# redirect_to @customer
		end

	end

	# private to make sure it can't be called outside its intended context.
	private
	  def customer_params
	    params.permit(:name, :phone)
	  end

end
