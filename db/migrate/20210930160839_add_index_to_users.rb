class AddIndexToUsers < ActiveRecord::Migration[6.1]
  def change
    add_index :users, :user, unique: true
  end
end
