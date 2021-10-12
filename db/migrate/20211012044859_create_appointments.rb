class CreateAppointments < ActiveRecord::Migration[6.1]
  def change
    create_table :appointments do |t|
      t.string :name
      t.string :cardnumber
      t.string :expiration
      t.string :cvv

      t.timestamps
    end
  end
end
