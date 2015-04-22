class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
	  t.string   :name
	  t.integer	 :owner
	  t.string   :location
	  t.integer  :regarding
	  t.datetime :start_date_time
	  t.datetime :end_date_time
	  t.integer  :appointment_type_id
	  t.integer  :appointment_status_id
	  t.integer	 :company_id
      t.timestamps
    end
    add_index :appointments, :owner
    add_index :appointments, :regarding
    add_index :appointments, :appointment_status_id
    add_index :appointments, :appointment_type_id
    add_index :appointments, :company_id
  end
end
