class ImagesController < ApplicationController
def index
		@images = Image.all
	end

	def new
		@images = Image.new
  end

  def edit
   @images = Image.find(params[:id])
 	end

  def create
   @images = Image.new(images_params)
   if @images.save
     redirect_to @images
   else
     render 'new'
   end
	end

	def destroy
    @images = Image.find(params[:id])
    @images.destroy
    redirect_to images_path
  end

  def show
    @images = Image.find(params[:id])
  end

  def update
    @images = Image.find(params[:id])
 
    if @images.update(images_params)
      redirect_to @images
    else
      render 'edit'
    end
  end

  private
	  def images_params
      params.require(:image).permit(:user_id, :real_name, :image_name)
    end
end
