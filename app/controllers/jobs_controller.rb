class JobsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create,:update, :destroy,:edit]

 def show
   @job = Job.find(params[:id])
 end

 def index
   @jobs = Job.all
 end

 def new
   @job = Job.new
 end

 def edit
   @job = Job.find(params[:id])
 end

 def update
   @job = Job.find(params[:id])
    if @job.update(job_params)
      redirect_to jobs_path ,notice: 'Update Success'
    else
      render :edit
    end
  end

 def create
   @job = Job.new(job_params)

   if @job.save
     redirect_to jobs_path
   else
     render :new
   end
 end

 def destroy
   @job = Job.find(params[:id])

   if @job.destroy
       redirect_to jobs_path , notice: 'Job Deleted'
   end
 end

   private

   def job_params

   params.require(:job).permit(:title, :description)

   end

end
