class AdminController < ApplicationController
  def dashboard
  end

  def accounts
  	@employee = Employee.all
  	@contractor = Contractor.all
    @organization = Organization.all
  end

  def payroll
    @employees = Employee.all
    @organization = Organization.find_by(params[:id])
  end

  def show
  end

  private 

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

  def userpage
    render :layout => false
  end 

end
