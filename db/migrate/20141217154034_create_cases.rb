class CreateCases < ActiveRecord::Migration
  def change
    create_table :cases do |t|
      t.string :name
      t.integer :owner
      t.integer :case_status_id
      t.integer :contact_id
      t.integer :product_id
      t.integer :priority_id
      t.integer :case_type_id
      t.integer :case_origin_id
      t.integer :case_reason_id
      t.integer :account_id
      t.string  :reported_by
      t.text	:comments
      t.integer :phone
      t.string 	:email
      t.string 	:company_id

      t.timestamps
    end
    add_index :cases, :owner
    add_index :cases, :case_reason_id
    add_index :cases, :case_origin_id
    add_index :cases, :case_type_id
    add_index :cases, :case_status_id
    add_index :cases, :priority_id
    add_index :cases, :product_id
    add_index :cases, :contact_id
    add_index :cases, :account_id
    add_index :cases, :company_id
  end
end
