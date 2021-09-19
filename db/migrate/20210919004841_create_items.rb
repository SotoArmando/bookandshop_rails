class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.string :make
      t.string :model
      t.integer :year
      t.integer :duration

      t.timestamps
    end
  end
end
