class UsersController < ApplicationController
	before_action :set_user, only: [:handle_update, :handle_destroy]
	before_action :authenticate_user!

	# User profile page
	def profile
	end

	# Sign up page
	def signup
	end

	# Edit user page
	def edit
	end

	# Create new user
	def handle_create
	    @user = User.new(user_params)
	    respond_to do |format|
	      if @user.save
	        session[:user_id] = @user.id
	        format.html { redirect_to :root }
	      else
	        format.html { render :signup }
	      end
	    end
	end

	# Update user
	def handle_update
	    respond_to do |format|
	      if @user.update(user_params)
	        format.html { redirect_to @user }
	      else
	        format.html { render :edit_user }
	      end
	    end
	end

	# Delete user
	def handle_delete
	    @user.destroy
	    respond_to do |format|
	      format.html { redirect_to :delete_user }
	    end
	end

	# Login user
	def handle_login
		user = User.find_by(email: params[:user][:email])
		if user && user.password == params[:user][:password]
		  session[:user_id] = user.id
		  redirect_to profile_path(user)
		else
		  redirect_to :root
		end
	end

	# Logout user
	def handle_logout
		session[:user_id] = nil
		redirect_to :root
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
