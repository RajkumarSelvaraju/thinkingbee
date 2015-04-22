class CreatePricingStatuses < ActiveRecord::Migration
  def change
    create_table :pricing_statuses do |t|
      t.string :name

      t.timestamps
    end
  end
end
