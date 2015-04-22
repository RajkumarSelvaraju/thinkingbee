class CreatePotentialTypes < ActiveRecord::Migration
  def change
    create_table :potential_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
