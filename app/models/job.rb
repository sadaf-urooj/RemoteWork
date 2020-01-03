class Job < ApplicationRecord
  belongs_to :client

  scope :search_bar, -> (search) { where("title iLIKE ? OR description iLIKE ?", "%#{search}%", "%#{search}%") }
  # match pattern,                    wild_cards to match the search
  scope :filter_skills, -> (skills) { joins(:skills).where(skills: {name: skills}) }

  scope :recent, -> { order(created_at: :desc).limit(4) }

  with_options dependent: :destroy do
    has_many :proposals
    has_many :freelancers, through: :proposals
    has_and_belongs_to_many :skills
    # has_one :contract, through: :proposals
  end

  def applied? (current_freelancer)
    proposals.where(freelancer_id: current_freelancer.id).exists?
  end
end