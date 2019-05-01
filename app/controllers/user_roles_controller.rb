class UserRolesController < ApplicationController

	def new
		@user_roles = UserRole.new
  end

  def edit
   @user_roles = UserRole.find(params[:id])
 	end

  def create
   @user_roles = UserRole.new(user_roles_params)
   if @user_roles.save
     redirect_to @user_roles
   else
     render 'new'
   end
	end

  def index
    @user_roles = UserRole.all
  end

  def destroy
    @user_roles = UserRole.find(params[:id])
    @user_roles.destroy
    redirect_to user_roles_path
  end

  def show
    @user_role = UserRole.find(params[:id])
  end

  def update
    @user_role = UserRole.find(params[:id])
 
    if @user_role.update(user_roles_params)
      redirect_to @user_role
    else
      render 'edit'
    end
  end

  private
	  def user_roles_params
	    params.require(:user_role).permit(:role_name)
	  end
end