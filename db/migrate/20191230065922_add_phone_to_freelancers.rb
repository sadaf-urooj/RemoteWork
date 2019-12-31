class AddPhoneToFreelancers < ActiveRecord::Migration[6.0]
  def change
    add_column :freelancers, :phone, :string
  end
end
