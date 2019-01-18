class CustomerController < ApplicationController
	# layout false
	def index
	end

	def create

		@customer = Customer.new(customer_params)

		if @customer.save
			flash[:success] = "Thank You, for Registering."
			redirect_to @customer
		else
			flash[:danger] = "Error in Registration, Please try again."
			redirect_to 'new'
		end

	end

	# private to make sure it can't be called outside its intended context.
	private
	  def customer_params
	    params.permit(:name, :phone)
	  end

end
