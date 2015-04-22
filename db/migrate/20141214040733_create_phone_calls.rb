class CreatePhoneCalls < ActiveRecord::Migration
  def change
    create_table :phone_calls do |t|
      t.string  :name
      t.integer :call_form
      t.integer :call_to
      t.integer :related_to
      t.integer :owner
      t.integer :call_status_id
      t.integer :call_purpose_id
      t.integer :call_type_id
      t.integer :company_id
      t.timestamps
    end

    add_index :phone_calls, :call_form
    add_index :phone_calls, :call_to
    add_index :phone_calls, :related_to
    add_index :phone_calls, :owner
    add_index :phone_calls, :call_status_id
    add_index :phone_calls, :call_purpose_id
    add_index :phone_calls, :call_type_id
    add_index :phone_calls, :company_id
  end
end
