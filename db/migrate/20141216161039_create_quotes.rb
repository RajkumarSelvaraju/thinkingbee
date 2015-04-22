class CreateQuotes < ActiveRecord::Migration
  def change
    create_table :quotes do |t|
      t.string	:name
      t.integer :owner
      t.integer :potential_id
      t.integer :quote_stage_id
      t.date	  :valid_till
      t.integer :contact_id
      t.integer :account_id
      t.integer :company_id
      t.timestamps
    end
    add_index :quotes, :owner
    add_index :quotes, :quote_stage_id
    add_index :quotes, :company_id
    add_index :quotes, :account_id
    add_index :quotes, :contact_id
    add_index :quotes, :potential_id
  end
end
