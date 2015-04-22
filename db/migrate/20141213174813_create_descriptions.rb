class CreateDescriptions < ActiveRecord::Migration
  def change
    create_table :descriptions do |t|
      t.text :context
      t.integer :descripable_id
      t.string  :descripable_type

      t.timestamps
    end
    add_index :descriptions, :descripable_id
    add_index :descriptions, :descripable_type
  end
end
