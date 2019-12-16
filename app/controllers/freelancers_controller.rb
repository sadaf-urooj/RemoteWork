class FreelancersController < ApplicationController
  def show
    @freelancer = Freelancer.find(params[:id])
  end
end
