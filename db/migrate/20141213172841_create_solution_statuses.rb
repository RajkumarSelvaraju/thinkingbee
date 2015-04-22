class CreateSolutionStatuses < ActiveRecord::Migration
  def change
    create_table :solution_statuses do |t|
      t.string :name

      t.timestamps
    end
  end
end
