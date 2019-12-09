class Skill < ApplicationRecord
    has_and_belongs_to_many :freelancers
    has_and_belongs_to_many :jobs
end
