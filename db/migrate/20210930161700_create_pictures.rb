class CreatePictures < ActiveRecord::Migration[6.1]
  def change
    create_table :pictures do |t|
      t.string :pictureid

      t.timestamps
    end
  end
end
