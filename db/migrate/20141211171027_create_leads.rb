class CreateLeads < ActiveRecord::Migration
  def change
    create_table :leads do |t|
      t.string  :f_name
      t.string  :l_name
      t.string  :company_name
      t.integer :owner
      t.integer :lead_status_id
      t.integer :lead_source_id
      t.integer :industry_id
      t.string  :emp_range
      t.integer :rating_id
      t.integer :company_id
      t.timestamps
    end
    add_index :leads, :lead_source_id
    add_index :leads, :lead_status_id
    add_index :leads, :industry_id
    add_index :leads, :rating_id
    add_index :leads, :company_id
  end
end
