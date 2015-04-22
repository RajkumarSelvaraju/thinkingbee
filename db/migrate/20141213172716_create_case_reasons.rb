class CreateCaseReasons < ActiveRecord::Migration
  def change
    create_table :case_reasons do |t|
      t.string :name

      t.timestamps
    end
  end
end
