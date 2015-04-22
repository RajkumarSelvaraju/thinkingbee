class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :street
      t.string :city
      t.string :state
      t.integer :zip_code
      t.string :country
      t.string :billing_street
      t.string :billing_city
      t.string :billing_state
      t.string :billing_zip_code
      t.string :billing_country
      t.integer :address_id
      t.integer :address_type

      t.timestamps
    end
    add_index :addresses, :address_id
    add_index :addresses, :address_type
  end
end
