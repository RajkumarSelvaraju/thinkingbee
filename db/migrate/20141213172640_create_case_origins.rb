class CreateCaseOrigins < ActiveRecord::Migration
  def change
    create_table :case_origins do |t|
      t.string :name

      t.timestamps
    end
  end
end
