class CompanyController < ApplicationController

	def new
		@company = Company.new
  end

  def index
    @company = Company.all
  end

  def create
  	@company = Company.new(company_params)
  	if @company.save
     redirect_to @company
    else
     render 'new'
	  end
	end

	def edit
		@company = Company.find(params[:id])
	end	

	def update
   	@company = Company.find(params[:id])
	  if @company.update(company_params)
	    redirect_to @company
	  else
	    render 'edit'
	  end
	end

	def show
    @company = Company.find(params[:id])
  end

  def destroy
	  @company = Company.find(params[:id])
	  @company.destroy
	  redirect_to company_index_path
	end

	private
  def company_params
    params.require(:company).permit(:name, :country_id, :state_id, :city_id, :postcode, :start_date, :active)
  end
end
