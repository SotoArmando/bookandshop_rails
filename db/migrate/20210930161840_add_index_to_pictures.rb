class AddIndexToPictures < ActiveRecord::Migration[6.1]
  def change
    add_index :pictures, :pictureid, unique: true

  end
end
