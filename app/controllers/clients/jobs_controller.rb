module Clients
  class JobsController < ApplicationController
    before_action :authenticate_client!
    before_action :find_job, only: [:show, :edit, :destroy, :update]

    def index
      @jobs = current_client.jobs
    end

    def new
      @job = Job.new
    end

    def create
      @job = Job.new(job_params.merge(client_id: current_client.id))
      # @job = Job.new(job_params)
      # @job.client_id = current_client.id
      if @job.save
        redirect_to clients_jobs_path, notice: 'job Created Successfully'
      else
        render :new
      end
    end

    def update
      if @job.update(job_params)
        redirect_to clients_job_path(@job), notice: 'Employee Updated Successfully'
      else
        render :edit
      end
    end

    def destroy
      @job.destroy
      redirect_to clients_jobs_path
    end



    private
    def job_params
      params.require(:job).permit(:title, :description, :start_date, :end_date, :client_id, skill_ids: [])
    end
    def find_job
      @job = Job.find(params[:id])
    end

  end
end




