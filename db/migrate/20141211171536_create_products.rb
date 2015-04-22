class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string	:name
      t.integer :owner
      t.integer :code
      t.integer :product_status_id
      t.integer :vendor_id
      t.integer :product_category_id
      t.integer :unit_price
      t.integer :com_rate
      t.integer :tax_id
      t.integer :usage_unit_id
      t.integer :qty_ordered
      t.integer :qty_stock
      t.integer :company_id
      t.timestamps
    end
    add_index :products, :owner
    add_index :products, :product_status_id
    add_index :products, :vendor_id
    add_index :products, :product_category_id
    add_index :products, :usage_unit_id
    add_index :products, :tax_id
    add_index :products, :company_id
  end
end
