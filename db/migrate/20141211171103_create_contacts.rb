class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string  :f_name
      t.string  :l_name
      t.string  :company_name
      t.integer :owner
      t.integer :lead_source_id
      t.integer :account_id
      t.integer :vendor_id
      t.string 	:department
      t.integer	:company_id
      t.timestamps
    end

    add_index :contacts, :company_id
    add_index :contacts, :owner
    add_index :contacts, :lead_source_id
    add_index :contacts, :account_id
    add_index :contacts, :vendor_id
  end
end
