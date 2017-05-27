class PaymentsController < ApplicationController
	before_action :set_payment, only: [:show, :edit]
	before_action :set_employee, only: [:create, :show, :destroy, :update, :edit, :new, :index]

  def index
    @payments = @employee.payments.all
  end

	def create
		@payment = @employee.payments.create(payment_params)

  	if @payment.save
  		flash[:notice] = "Payment details have been created"
  		render 'show'
  	else
  		flash[:notice] = "Payment details already exist for this employee"
  		render 'new'
		end

	end


	def new
		@payment = Payment.new
		# if @payment.employee_id.nil?
		# render 'show'
		# else
		# 	flash[:notice] = "Could not be saved due to errors"
		# 	render 'new'
		# 	end
		end

	def show

	end

	def edit
	end

	def update
		if Payment.update(params[:id], payment_params)
			redirect_to employee_payment_path
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
      :cost_extra,
      :cost_salary,
      :hrs_extra,
			:hrs_worked,
			:extra_pay,
			:gross_pay,
			:employee_id,
			:created_at,
			:updated_at

			)
	end

end
