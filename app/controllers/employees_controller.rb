class EmployeesController < ApplicationController
	before_action :set_employee, only: [:show, :edit]
	before_action :set_organization, only: [:create, :show, :destroy, :update, :edit, :new, :index]
  

  def index
		@employees = Employee.all.order('created_at DESC')
  end

  def new
  	@employee = Employee.new
  end 
  
  def create
  	@employee = @organization.employees.create(employee_params)
		# redirect_to 'show'
  	# @organization = Organization.find(params[:id])
  	# employee = Employee.new(employee_params)
  	# @employee = @organization.employees << employee
  	#  	# @employee = @organization.employee.create(employee_params)
  	# redirect_to 'show'
 
  	if @employee.save
  		flash[:notice] = "Employee was Created"
  		redirect_to @organization
  	else
  		flash[:notice] = "Sorry, Please put a name" 
  		render 'new'	
  	end
	end

	def show
		render :layout => false
	end

	def edit
	end

	def update
		if Employee.update(params[:id], employee_params)
			redirect_to organization_employee_path
		else
			render 'edit'
		end
	end

	def destroy
		@employee = @organization.employees.find(params[:id])
		@employee.destroy
		# @employee = organization.employee.find(params[:id])
		redirect_to organization_path(@organization)
		# if @employee.destroy
		# 	flash[:success] = "Employee was deleted"
		# else
		# 	flash[:error] = "Employee was not deleted"
		
		# end
		# if @todo_item.destroy
		# 	flash[:success] = "Todo List item was deleted."
		# else
		# 	flash[:error] = "Todo List item could not be deleted."
		# end
		# redirect_to @todo_list
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
