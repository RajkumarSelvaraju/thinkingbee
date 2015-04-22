class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.integer :priority_id
      t.datetime :start_date_time
      t.datetime :end_date_time
      t.string	 :location
      t.integer  :owner
      t.integer  :event_status_id
      t.integer  :related_to
      t.integer  :company_id
      t.timestamps
    end

    add_index :events, :priority_id
    add_index :events, :event_status_id
    add_index :events, :related_to
    add_index :events, :company_id
  end
end
