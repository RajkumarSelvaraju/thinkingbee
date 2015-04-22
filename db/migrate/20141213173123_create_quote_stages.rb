class CreateQuoteStages < ActiveRecord::Migration
  def change
    create_table :quote_stages do |t|
      t.string :name

      t.timestamps
    end
  end
end
