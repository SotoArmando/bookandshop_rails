class AddUserIdtoAppointment < ActiveRecord::Migration[6.1]
  def change
    add_column :appointments, :user_id, :integer
  end
end
