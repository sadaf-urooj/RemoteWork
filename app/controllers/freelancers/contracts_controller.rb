module Freelancers
  class ContractsController < ApplicationController

    before_action :authenticate_freelancer!

    def index
      @contracts = current_freelancer.contracts
    end

    def update
      @contract = Contract.find(params[:id])
      @contract.update(end_date: DateTime.now)
      redirect_back(fallback_location: root_path)
    end

  end
end