module Freelancers
  class JobsController < ApplicationController


    def index
      @jobs = Job.includes(:skills)
      @jobs = if params[:search].present?
               @jobs.search_bar(params[:search])
             else
               @jobs
             end
      @jobs = if params[:skills].present?
               @jobs.filter_skills(params[:skills])
             else
               @jobs
             end
    end

    #  @job = Job.includes(:skills).where(["title iLIKE ? OR description iLIKE ?", "%#{params[:search]}%",  "%#{params[:search]}%"]).joins(:skills).where(skills: {name: params[:skills]})


  end
end

  # .search_bar(params[:search]).filter_skills(params[:skills])