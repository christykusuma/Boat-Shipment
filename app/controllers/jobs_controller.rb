class JobsController < ApplicationController
	# Job profile page
	def profile
		@jobs = Job.find_by(params[:id])
	end

	# New job page
	def new
		@job = Job.new
	end

	# Edit job page
	def edit
	end

	# Create job
	def handle_create
	end

	# Update job
	def handle_update
	end

	# Delete job
	def handle_delete
	end

	private

	def set_job
	end

	def job_params
	end
end
