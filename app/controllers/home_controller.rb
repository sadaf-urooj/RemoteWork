class HomeController < ApplicationController

  layout 'home'

  def index
    @jobs = Job.recent
  end
end