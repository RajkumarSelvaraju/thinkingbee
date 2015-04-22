class CreateCallPurposes < ActiveRecord::Migration
  def change
    create_table :call_purposes do |t|
      t.string :name

      t.timestamps
    end
  end
end
