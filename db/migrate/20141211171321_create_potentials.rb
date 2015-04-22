class CreatePotentials < ActiveRecord::Migration
  def change
    create_table :potentials do |t|
      t.string  :name
      t.integer :owner
      t.integer :amount
      t.integer :contact_id
      t.date	:closing_date
      t.integer :account_id
      t.integer :potential_stage_id
      t.integer :potential_type_id
      t.integer :probability
      t.string 	:next_step
      t.integer :expected_revenue
      t.integer :lead_source_id
      t.integer :campaign_id
      t.integer :company_id
      t.timestamps
    end
    add_index :potentials, :owner
    add_index :potentials, :company_id
    add_index :potentials, :contact_id
    add_index :potentials, :account_id
    add_index :potentials, :potential_type_id
    add_index :potentials, :potential_stage_id
    add_index :potentials, :next_step
    add_index :potentials, :lead_source_id
    add_index :potentials, :campaign_id
  end
end
