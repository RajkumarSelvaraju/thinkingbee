class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.decimal :phone
      t.string :city
      t.string :state
      t.string :country
      t.string :time_zone

      t.timestamps
    end
  end
end
