class CreatePriceBooks < ActiveRecord::Migration
  def change
    create_table :price_books do |t|
	  t.string  :name
	  t.integer :owner
	  t.integer :pricing_status_id
	  t.integer :pricing_model_id
	  t.integer :company_id
      t.timestamps
    end
    add_index :price_books, :owner
    add_index :price_books, :pricing_model_id
    add_index :price_books, :pricing_status_id
    add_index :price_books, :company_id
  end
end
