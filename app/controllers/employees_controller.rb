class EmployeesController < ApplicationController
	# before_action :set_organization

  def index
  end

  def new
  	@employee = Employee.new
  end 
  
  def create
  	@organization = Organizations.find(params[:organization_id])
  	@employee = @organization.employees.create(employee_params)
  	@employee.save
  	redirect_to @employee
 # #  	@employee = Employee.new(employee_params)
 # #  	if @employee.save
 # #  		redirect_to @employee
 # #  	else
 # #  		render 'new'	
 # #  	end
	end

	def show
		@employee = Employee.find(params[:id])
		@employees = Employee.all
	end

  private

  # def set_organization
  # 	@organization = Organizations.find(params[:organization_id])
  # end

	def employee_params
		params.require(:employee).permit(:bank_account_id, :employee_id, :date_of_birth, :date_joined_company, :date_left_company, :gender, :job_title, :first_name, :middle_name, :last_name, :residential_address, :organization_id)
	end

end
