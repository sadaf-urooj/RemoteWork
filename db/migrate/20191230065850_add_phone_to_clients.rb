class AddPhoneToClients < ActiveRecord::Migration[6.0]
  def change
    add_column :clients, :phone, :string
  end
end
