class PaymentsController < ApplicationController

	def create
	end 

	def new
	end

	def show
	end

	def edit
	end

	def update
		if @payment.update(payment_params)
			redirect_to @payment
		else
			render 'edit'
		end
	end 

end
