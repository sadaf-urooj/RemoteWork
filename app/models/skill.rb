class Skill < ApplicationRecord

    with_options dependent: :destroy do
        has_and_belongs_to_many :freelancers
        has_and_belongs_to_many :jobs
    end
end
