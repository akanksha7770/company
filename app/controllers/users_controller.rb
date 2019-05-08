class UsersController < ApplicationController
	def index
		@users = User.all
	end

  def show

    @user = User.find(params[:id])
  end

  private
	  def users_params
	    params.require(:user).permit(:email, :first_name, :last_name,
        :company_id, :role_id, :start_date, :end_date, :monthly_charge, :notesblob, :image_id, :active)
	  end
end
