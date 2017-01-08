class PaymentsController < ApplicationController
	before_action :set_payment, only: [:show, :edit]
	before_action :set_employee, only: [:create, :show, :destroy, :update, :edit, :new]
	# before_action :set_organization, only: [:create, :show, :destroy, :update, :edit, :new, :index]
  

	def create
		@organization = Organization.find_by(params[:organization_id])
  	@payment = @employee.payments.create(payment_params)
  	if @payment.save
  		flash[:notice] = "Payment details have been created"
  		redirect_to organization_employee_path(@organization, @employee)
  	else
  		flash[:notice] = "Could not be saved due to errors" 
  		render 'new'	
  	end
	end

	def new
		@payment = Payment.new
	end

	def show
	end

	def edit
	end

	def update
		if Payment.update(params[:id], payment_params)
			redirect_to organization_employee_path
		else
			render 'edit'
		end
	end

	def destroy
	end

	private

	def set_payment
  	@payment = Payment.find(params[:id])
  end

  def set_employee
		@employee = Employee.find(params[:employee_id])
	end

	# def set_organization
	# 	@organization = Organization.find(params[:organization_id])
	# end

	def payment_params
		params.require(:payment).permit(
			:payment_status,
			:month,
			:salary,
			:hrs_worked,
			:extra_pay,
			:gross_pay,
			:employee_id,
			:created_at,
			:updated_at,
			)
	end

end
