class UsersController < ApplicationController
	before_action :set_user, only: []
	before_action :authenticate_user!

	# User profile page
	def profile
		@user = User.find_by(params[:id])
		@boats = Boat.where(user_id: current_user.id)
	end

	private

	# Set user
	def set_user
		@user = User.find_by(params[:id])
	end

	# Pass in user params
	def user_params
		params.require(:user).permit(:fname, :lname, :email, :password, :photo)
	end

end
