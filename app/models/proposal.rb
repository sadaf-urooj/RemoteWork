class Proposal < ApplicationRecord
  belongs_to :freelancer
  belongs_to :job
  has_one :contract
end
