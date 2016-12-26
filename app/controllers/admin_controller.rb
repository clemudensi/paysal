class AdminController < ApplicationController
  def dashboard
  end

  def accounts
  	@employee = Employee.all
  	@contractor = Contractor.all
  end

  def payroll
  end

  def show
  end

  # private 

  def employee_params
		params.require(:employee).permit(
			:employee_id
			)
	end

	def contractors_params
		params.require(:contractors).permit(
			:bank_account_id
			)
	end

end
