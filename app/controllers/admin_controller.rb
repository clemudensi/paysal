class AdminController < ApplicationController
  def dashboard
  end

  def accounts
  	@employee = Employee.all
  	@contractor = Contractor.all
    @organization = Organization.all
  end

  def payroll
    @payments = Payment.all
  end

  def show
  end

  private 

  def employee_params
		params.require(:employee).permit(
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
      :image
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
