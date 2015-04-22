class CreateGlAccounts < ActiveRecord::Migration
  def change
    create_table :gl_accounts do |t|
      t.string :name

      t.timestamps
    end
  end
end
