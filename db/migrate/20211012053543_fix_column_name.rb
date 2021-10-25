class FixColumnName < ActiveRecord::Migration[6.1]
  def change
    rename_column :cartitems, :appoinment_id, :appointment_id
  end
end
