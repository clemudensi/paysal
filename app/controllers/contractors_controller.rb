class ContractorsController < ApplicationController
	before_action :set_contractor, only: [:show, :edit]
	before_action :set_organization, only: [:create, :show, :destroy, :update, :edit, :new]
	before_action :authenticate_user!, only: [:show, :edit, :index, :new]

	def index
		@contractors = Contractor.all
	end 

	def new
		@contractor = Contractor.new
	end

	def create
  	@contractor = @organization.contractors.create(contractor_params)
  	if @contractor.save
  		flash[:success] = "Contractor was Created"
  		redirect_to @organization
  	else
  		render 'new'	
  	end
	end

	def show
		@contractor = Contractor.find(params[:id])
	end

	def edit
		@contractor = Contractor.find(params[:id])
	end

	def display
    render :layout => false
	end

	private 

	def set_contractor
  	@contractor = Contractor.find(params[:id])
  end

  def set_organization
		@organization = Organization.find(params[:organization_id])
	end

	def contractor_params
		params.require(:contractor).permit(
			:bank_account_id, 
			:gender, 
			:job_title, 
			:first_name,
			:middle_name, 
			:last_name, 
			:organization_id)
	end

end
