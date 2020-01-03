module Freelancers

    class ProposalsController < ApplicationController
      before_action :authenticate_freelancer!

        def index
          @proposals = current_freelancer.proposals
        end
        def new
          @proposal = Proposal.new
          @proposal.job_id = params[:job_id]
        end

        def create
          @proposal = Proposal.new(proposal_params)          
          # @proposal.job_id = params[:job_id]
          @proposal.freelancer_id = current_freelancer.id        
          if @proposal.save

            redirect_to freelancers_jobs_path

          else
            render :new

          end
        end


        private
        def proposal_params
          params.require(:proposal).permit(:objective, :status, :job_id, documents: [])
        end
    end

end