class CreateInvoices < ActiveRecord::Migration
  def change
    create_table :invoices do |t|
   	  t.string  :name
   	  t.integer :owner
   	  t.integer :sales_order_id
   	  t.integer :purchase_order_id
   	  t.integer :excise_duty
   	  t.date 	:invoice_date
   	  t.date	:due_date
   	  t.integer	:order_status_id
   	  t.integer :sales_com
   	  t.integer :account_id
   	  t.integer :product_id
   	  t.integer :contact_id
   	  t.integer :company_id
      t.timestamps
    end

    add_index :invoices, :owner
    add_index :invoices, :sales_order_id
    add_index :invoices, :purchase_order_id
    add_index :invoices, :order_status_id
    add_index :invoices, :account_id
    add_index :invoices, :product_id
    add_index :invoices, :contact_id
    add_index :invoices, :company_id
  end
end
