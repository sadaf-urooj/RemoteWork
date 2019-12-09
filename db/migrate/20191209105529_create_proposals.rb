class CreateProposals < ActiveRecord::Migration[6.0]
  def change
    create_table :proposals do |t|
      t.references :freelancer, null: false, foreign_key: true
      t.references :job, null: false, foreign_key: true
      t.text :objective
      t.integer :status

      t.timestamps
    end
  end
end
