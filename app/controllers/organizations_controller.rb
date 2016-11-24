class OrganizationsController < ApplicationController

  def index
  	@organizations = Organization.all
  end

  def new
  	@organization = Organization.new
  end 
  
  def create
  	@organization = Organization.new(organization_params)
  	if @organization.save
  		redirect_to @organization
  	else
  		render 'new'
  	end
	end

	def show
		@organizations = Organization.all
		@organization = Organization.find(params[:id])
	end

  private

	def organization_params
		params.require(:organization).permit(:legal_name, :legal_entity_code, :logo, :tax_id_no, :address_id)
	end

end
