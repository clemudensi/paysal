class OrganizationsController < ApplicationController
	before_action :find_organization, only: [:show, :edit, :update, :destroy]
	before_action :authenticate_user!, only: [:show, :edit, :index, :new]


  def index
  	@organizations = Organization.all.order('created_at DESC')
  	
  end

  def new
  	@organization = current_user.organizations.build
  end 
  
  def create
  	@organization = current_user.organizations.build(organization_params)
  	if @organization.save
  		flash[:success] = "Organization was created successfully"
  		redirect_to @organization
		else
			flash[:notice] = "Sorry, please put all required details"
  		render 'new'
  	end
	end

	def show
		@employees = @organization.employees.all
	end

	def edit
	end

	def update
		if @organization.update(organization_params)
			redirect_to @organization
		else
			render 'edit'
		end
	end 

	def destroy
		if @organization.destroy
			redirect_to organizations_path
			flash[:success] = "Organization was deleted"
		else
			flash[:error] = "Organization was not deleted"	
		end
	end

  private

  def find_organization
  	@organization = Organization.find(params[:id])
  end

	def organization_params
		params.require(:organization).permit(
			:legal_name,
			:legal_entity_code,
			:logo, :tax_id_no,
			:address_id,
			:date_founded,
			:image
			)
	end

end
