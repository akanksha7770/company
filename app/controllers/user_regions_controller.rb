class UserRegionsController < ApplicationController
	def new
		@user_regions = UserRegion.new
  end

  def index
  	@user_regions= UserRegion.all
  end	
  def show
    @user_regions = UserRegion.find(params[:id])
  end

  def edit
   @user_regions = UserRegion.find(params[:id])
  end

  def update
    @user_regions = UserRegion.find(params[:id])
 
    if @user_regions.update(user_regions_params)
      redirect_to @user_regions
    else
      render 'edit'
    end
  end

  def destroy
  @user_regions = UserRegion.find(params[:id])
  @user_regions.destroy
 
  redirect_to user_regions_path
end

  def create
   @user_regions = UserRegion.new(user_regions_params)
 
  if @user_regions.save
    redirect_to @user_regions
  else
    render 'new'
  end
end

  private
  def user_regions_params
    params.require(:user_region).permit(:user_id, :region_id)
  end
end
