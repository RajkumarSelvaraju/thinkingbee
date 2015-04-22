class CreatePurchaseOrders < ActiveRecord::Migration
  def change
    create_table :purchase_orders do |t|
      t.string :name
      t.integer :owner
      t.integer :po_no
      t.integer :vendor_id
      t.integer :requistion_no
      t.integer :tracking_no
      t.integer :contact_id
      t.date	:po_date
      t.date 	:due_date
      t.integer	:excise_duty
      t.integer :sales_com
      t.integer :order_status_id
      t.integer :product_id
      t.integer	:company_id

      t.timestamps
    end

    add_index :purchase_orders, :owner
    add_index :purchase_orders, :vendor_id
    add_index :purchase_orders, :contact_id
    add_index :purchase_orders, :order_status_id
    add_index :purchase_orders, :product_id
    add_index :purchase_orders, :company_id
  end
end
