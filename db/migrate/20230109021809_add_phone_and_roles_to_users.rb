class AddPhoneAndRolesToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :phone, :string, default: "", null: false
    add_column :users, :role, :integer, default: 0, null: false
  end
end
