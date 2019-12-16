module Freelancers
  class JobsController < ApplicationController
    def index
      @job = Job.all
    end

  end
end

