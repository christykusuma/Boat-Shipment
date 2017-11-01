class UsersController < ApplicationController
	before_action :set_user, only: []
	before_action :authenticate_user!

	# User profile page
	def profile
	end

	private

	# Set user
	def set_user
		@user = User.find(params[:id])
	end

	# Pass in user params
	def user_params
		params.require(:user).permit(:fname, :lname, :email, :password, :photo)
	end

end
