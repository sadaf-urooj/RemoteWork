class CreateJoinTableFreelancersSkills < ActiveRecord::Migration[6.0]
  def change
    create_join_table :freelancers, :skills do |t|
      # t.index [:freelancer_id, :skill_id]
      # t.index [:skill_id, :freelancer_id]
    end
  end
end
