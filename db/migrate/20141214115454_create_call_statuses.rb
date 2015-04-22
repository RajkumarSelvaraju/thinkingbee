class CreateCallStatuses < ActiveRecord::Migration
  def change
    create_table :call_statuses do |t|
      t.string :name

      t.timestamps
    end
  end
end
