class JobsController < ApplicationController
	before_action :set_job, only: [:edit,:profile,:handle_update,:handle_delete]
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
		 @job = Job.new(job_params)
		 respond_to do |format|
		 	if @job.save
		 	  format.html { redirect_to job_path, notice: 'Job was successfully created.' }
		 	else
	        format.html { render :new }
	      end
	    end
	end

	# Update job
	def handle_update
		respond_to do |format|
	      if @job.update(job_params)
	        format.html { redirect_to job_path, notice: 'Job was successfully updated.' }
	      else
	        format.html { render :edit }
	      end
	    end
	end

	# Delete job
	def handle_delete
		@job.destroy
	    respond_to do |format|
	      format.html { redirect_back fallback_location: :root, notice: 'job was successfully destroyed.' }
	    end
	end

	private

	def set_job
		@job = Job.find_by(id: params[:id])
	end

	def job_params
		params.require(:job).permit(:name, :storage, :location)
	end
end
