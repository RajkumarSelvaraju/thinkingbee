class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string	:name
      t.integer :primary_contact
      t.integer :owner
      t.integer :parent_account_id
      t.integer :account_no
      t.integer :rating_id
      t.integer :annual_income
      t.integer :sic_code
      t.integer :company_id
      t.integer :account_type_id
      t.timestamps
    end
    add_index :accounts, :primary_contact
    add_index :accounts, :owner
    add_index :accounts, :parent_account_id
    add_index :accounts, :rating_id
    add_index :accounts, :company_id
    add_index :accounts, :account_type_id
  end
end
