class Job < ApplicationRecord
  belongs_to :client
  has_many :proposals
  has_many :freelancers, :through => :proposals
  has_many :contracts
  has_and_belongs_to_many :skills

  has_one :contrac, :through => :proposals

end
