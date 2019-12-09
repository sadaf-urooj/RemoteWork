class Contract < ApplicationRecord
  belongs_to :freelancer
  belongs_to :job
  belongs_to :proposal
  has_one :job, :through => :proposals
end
