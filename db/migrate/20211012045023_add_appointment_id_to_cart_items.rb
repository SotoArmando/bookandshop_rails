class AddAppointmentIdToCartItems < ActiveRecord::Migration[6.1]
  def change
    add_column :cartitems, :appoinment_id, :integer
    add_column :bookeditems, :appointment_id, :integer
  end
end
