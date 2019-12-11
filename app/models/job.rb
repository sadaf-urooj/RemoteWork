class Job < ApplicationRecord
  belongs_to :client

  with_options dependent: :destroy do
    has_many :proposals
    has_many :freelancers, through: :proposals
    has_and_belongs_to_many :skills
    # has_one :contract, through: :proposals
  end
end
