class AddTagsToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :bookcart, :string, array: true, default: []
    add_column :users, :shopcart, :string, array: true, default: []
  end
end
