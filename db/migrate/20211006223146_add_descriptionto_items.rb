class AddDescriptiontoItems < ActiveRecord::Migration[6.1]
  def change
    add_column :items, :description, :string
    add_column :items, :backcolor, :string
  end
end
