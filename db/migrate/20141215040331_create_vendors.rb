class CreateVendors < ActiveRecord::Migration
  def change
    create_table :vendors do |t|
      t.string  :name
      t.integer :owner
      t.integer :phone
      t.string  :email
      t.string	:website
      t.integer :gl_account_id
      t.integer :company_id

      t.timestamps
    end

    add_index :vendors, :owner
    add_index :vendors, :gl_account_id
    add_index :vendors,	:company_id
  end
end
