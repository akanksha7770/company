class ApplicationController < ActionController::Base

	before_action :authenticate_user!
	before_action :configure_permitted_parameters, if: :devise_controller?
	protected
	def configure_permitted_parameters
		devise_parameter_sanitizer.permit(:sign_up) do |user_params|
			user_params.permit({ roles: [] }, :email, :password, :password_confirmation,:first_name,:last_name,:notesblob,:company_id,:role_id,:start_date,:end_date,:monthly_charge,:image_id,:active)
		end
		devise_parameter_sanitizer.permit(:account_update) do |user_params|

			user_params.permit({ roles: [] }, :email, :password, :password_confirmation,:first_name,:last_name, :notesblob,:company_id, :role_id, :start_date, :end_date, :monthly_charge, :image_id, :active, :current_password)

		end
	end
end
