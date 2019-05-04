class RegionsController < ApplicationController
	def index
		@regions = Region.all
	end

	def new
		@regions = Region.new
  end

  def edit
   @regions = Region.find(params[:id])
 	end

  def create
   @regions = Region.new(regions_params)
   if @regions.save
     redirect_to @regions
   else
     render 'new'
   end
	end

	def destroy
    @regions = Region.find(params[:id])
    @regions.destroy
    redirect_to regions_path
  end

  def show
    @regions = Region.find(params[:id])
  end

  def update
    @regions = Region.find(params[:id])
 
    if @regions.update(regions_params)
      redirect_to @regions
    else
      render 'edit'
    end
  end

  private
	  def regions_params
	    params.require(:region).permit(:region_name)
	  end
end
