class ApplicationController < ActionController::Base
	before_action :current_user

	# Save current user information
	def current_user
		@current_user = User.find(session[:user_id]) if session[:user_id]
	end
end
