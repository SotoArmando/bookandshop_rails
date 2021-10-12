class RemoveShopcartFromUsers < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :shopcart, :string
    remove_column :users, :bookcart, :string
  end
end
