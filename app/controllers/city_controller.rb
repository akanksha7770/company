class CityController < ApplicationController
def index
		@city = City.all
	end

	def new
		@city = City.new
  end

  def edit
   @city = City.find(params[:id])
 	end

  def create
   @city = City.new(city_params)
   if @city.save
     redirect_to @city
   else
     render 'new'
   end
	end

	def destroy
    @city = City.find(params[:id])
    @city.destroy
    redirect_to city_index_path
  end

  def show
    @city = City.find(params[:id])
  end

  def update
    @city = City.find(params[:id])
 
    if @city.update(city_params)
      redirect_to @city
    else
      render 'edit'
    end
  end

  private
	  def city_params
	    params.require(:city).permit(:city_name)
	  end
end
