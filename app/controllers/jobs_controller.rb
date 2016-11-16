class JobsController < ApplicationController
  def show
    @jobs = Job.find(params[:id])
  end
  
  def new
    @job = Job.new
  end
  
  def create
    @job = Job.create(params.require(:job)
              .permit(:title, :location, :category, :company, :description))
    redirect_to @job 
  end
end
