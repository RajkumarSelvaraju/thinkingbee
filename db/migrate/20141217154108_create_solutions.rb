class CreateSolutions < ActiveRecord::Migration
  def change
    create_table :solutions do |t|
      t.string	:name
      t.integer :owner
      t.integer :solution_status_id
      t.integer :product_id
      t.text	  :question
      t.text	  :answer
      t.integer :company_id
      t.timestamps
    end
    add_index :solutions, :owner
    add_index :solutions, :solution_status_id
    add_index :solutions, :product_id
    add_index :solutions, :company_id
  end
end
