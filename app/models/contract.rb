class Contract < ApplicationRecord
  belongs_to :freelancer
  belongs_to :proposal
  has_one :job, :through => :proposal
end
