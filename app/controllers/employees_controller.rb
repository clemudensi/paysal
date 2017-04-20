class EmployeesController < ApplicationController
	before_action :set_employee, only: [:show, :edit, :destroy]
	before_action :set_organization, only: [:create, :show, :update, :edit, :new, :index]
	before_action :authenticate_user!, only: [:show, :edit, :index, :new]
  

  def index
		@employees = Employee.all.order('created_at DESC')
  end

  def new
  	@employee = Employee.new
  end 
  
  def create
  	@employee = @organization.employees.create(employee_params)
  	if @employee.save
      flash[:notice] = "Employee was Created"
      redirect_to organization_employee_path(@employee.organization, @employee)

  	else
  		flash[:notice] = "Sorry, please put all required details"
  		render 'new'
  	end
	end

	def show
		# @employee = Employee.find(params[:id])
		# @payment = Payment.find(params[:id])
    # @payments = @employee.payments.all



		render :layout => false
	end

	def edit
	end

	def update
		if Employee.update(params[:id], employee_params)
      flash[:notice] = "Employee was Updated"
      redirect_to organization_employee_path
		else
			render 'edit'
		end
	end

	def destroy
		# @employee = Employee.find(params[:id])
		# @employee.destroy
		# @employee = organization.employee.find(params[:id])

		if @employee.destroy
			flash[:success] = " Employee was deleted successfully"
    redirect_to organization_path(@employee.organization)
		else
			# flash[:error] = "Employee was not deleted"
		    render 'show'
		end

	end

  private

  def set_employee
		@employee = Employee.find(params[:id])
	end

  def set_organization
		@organization = Organization.find(params[:organization_id])
	end

	def employee_params
		params.require(:employee).permit(
			:bank_account_id, 
			:employee_id, 
			:date_of_birth, 
			:date_joined_company, 
			:date_left_company, 
			:gender, 
			:job_title, 
			:first_name, 
			:middle_name, 
			:last_name, 
			:residential_address, 
			:organization_id,
			:image)
	end

end
