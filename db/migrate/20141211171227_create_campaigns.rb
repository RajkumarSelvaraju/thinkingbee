class CreateCampaigns < ActiveRecord::Migration
  def change
    create_table :campaigns do |t|
      t.string  :name
      t.integer :owner
      t.integer :campaign_type_id
      t.integer :campaign_status_id
      t.integer :expected_revenue
      t.integer :budget_cost
      t.integer :actual_cost
      t.integer :expected_response
      t.integer :number_sent
      t.date	:start_date
      t.date 	:end_date
      t.integer :company_id
      t.timestamps
    end
    add_index :campaigns, :owner
    add_index :campaigns, :campaign_status_id
    add_index :campaigns, :campaign_type_id
    add_index :campaigns, :company_id
  end
end
