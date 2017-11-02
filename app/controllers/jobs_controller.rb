class JobsController < ApplicationController
	before_action :set_job, only: [:edit, :profile, :handle_update, :handle_delete]
	before_action :set_boat, only: [:profile, :new, :handle_create, :handle_update, :handle_delete]
	# Job profile page
	def profile
		
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
		 	  format.html { redirect_to boat_path(@boat.id), notice: 'Job was successfully created.' }
		 	else
	        format.html { render :new }
	      end
	    end
	end

	# Update job
	def handle_update
		respond_to do |format|
	      if @job.update(job_params)
	        format.html { redirect_to boat_path(@boat.id), notice: 'Job was successfully updated.' }
	      else
	        format.html { render :edit }
	      end
	    end
	end

	# Delete job
	def handle_delete
	    Job.transaction do
	      @job.assignments.destroy_all
	      @job.destroy
	    end
	    respond_to do |format|
	      format.html { redirect_to boat_path(@boat.id), notice: 'Job was successfully destroyed.' }
	    end
	end

	private

	def set_job
		@job = Job.find_by(id: params[:id])
	end
	def set_boat
		@boat = Boat.find_by(id: params[:boat_id])
	end

	def job_params
		params.require(:job).permit(:title, :description, :origin, :destination, :cost, :containers)
	end
end
