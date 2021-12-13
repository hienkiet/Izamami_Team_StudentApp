class AddNameAgeToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :user_name, :string
    add_column :users, :user_age, :integer
    add_index :users, :name, unique: true
  end
end
