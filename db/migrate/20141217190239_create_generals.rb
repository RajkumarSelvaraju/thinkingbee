class CreateGenerals < ActiveRecord::Migration
  def change
    create_table :generals do |t|
      t.string  :primary_email
      t.string  :secondary_email
      t.integer :mobile
      t.integer :telephone
      t.integer :fax
      t.string  :website
      t.string  :title
      t.string 	:skype
      t.string 	:location
      t.string	:twitter
      t.string 	:linkedin
      t.integer :general_info_id
      t.integer :general_info_type
      t.timestamps
    end
  end
end
