module Clients
  class ProposalsController < ApplicationController
    before_action :authenticate_client!
    def index
      @proposals = current_client.proposals
    end
  end
end