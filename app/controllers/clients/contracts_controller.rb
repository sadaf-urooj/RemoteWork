module Clients
  class ContractsController < ApplicationController

    before_action :authenticate_client!

    def index
      @contracts = current_client.contracts
    end


    def create
      @proposal = Proposal.find(params[:proposal_id])
      @contract = Contract.new
      @contract.start_date = DateTime.now
      @contract.start_date = @proposal.job.end_date
      @contract.proposal_id =  @proposal.id
      @contract.freelancer_id =  @proposal.freelancer_id
      @contract.save
      # redirect_back(fallback_location: clients_proposals_path(:job_id))
    end

    def update
      @contract = Contract.find(params[:id])
      @contract.update(end_date: DateTime.now)
      # redirect_back(fallback_location: root_path)
    end

  end
end



