class FreelancersController < ApplicationController

  before_action :authenticate_freelancer!

  def show
    @freelancer = Freelancer.find(params[:id])
  end
end