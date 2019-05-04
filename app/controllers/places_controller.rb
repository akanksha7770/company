class PlacesController < ApplicationController
def index
		@places = Place.all
	end

	def new
		@places = Place.new
  end

  def edit
   @places = Place.find(params[:id])
 	end

  def create
   @places = Place.new(places_params)
   if @places.save
     redirect_to @places
   else
     render 'new'
   end
	end

	def destroy
    @places = Place.find(params[:id])
    @places.destroy
    redirect_to places_path
  end

  def show
    @places = Place.find(params[:id])
  end

  def update
    @places = Place.find(params[:id])
 
    if @places.update(places_params)
      redirect_to @places
    else
      render 'edit'
    end
  end

  private
	  def places_params
      params.require(:place).permit(:place_name, :company_id)
    end
end

