class CreateSalesOrders < ActiveRecord::Migration
  def change
    create_table :sales_orders do |t|
      t.string  :name
      t.integer :owner
      t.integer :potential_id
      t.integer :purchase_order_id
      t.integer :customer_no
      t.date	  :due_date
      t.integer :quote_id
      t.integer :contact_id
      t.integer :pending
      t.integer :exices_duty
      t.integer :order_status_id
      t.integer :sales_com
      t.integer :account_id
      t.integer :company_id
      t.timestamps
    end

    add_index :sales_orders, :owner
    add_index :sales_orders, :potential_id
    add_index :sales_orders, :purchase_order_id
    add_index :sales_orders, :contact_id
    add_index :sales_orders, :order_status_id
    add_index :sales_orders, :account_id
    add_index :sales_orders, :company_id
    add_index :sales_orders, :quote_id
  end
end
