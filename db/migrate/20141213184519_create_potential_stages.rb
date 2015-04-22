class CreatePotentialStages < ActiveRecord::Migration
  def change
    create_table :potential_stages do |t|
      t.string :name

      t.timestamps
    end
  end
end
