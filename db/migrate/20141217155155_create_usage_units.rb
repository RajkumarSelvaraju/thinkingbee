class CreateUsageUnits < ActiveRecord::Migration
  def change
    create_table :usage_units do |t|
      t.string :name

      t.timestamps
    end
  end
end
