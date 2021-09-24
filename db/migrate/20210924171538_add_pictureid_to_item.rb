class AddPictureidToItem < ActiveRecord::Migration[6.1]
  def change
    add_column :items, :pictureid, :string
  end
end
