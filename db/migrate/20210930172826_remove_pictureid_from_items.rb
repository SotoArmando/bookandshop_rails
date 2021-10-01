class RemovePictureidFromItems < ActiveRecord::Migration[6.1]
  def change
    remove_column :items, :pictureid, :string
    add_column :pictures, :item_id, :integer
  end
end
