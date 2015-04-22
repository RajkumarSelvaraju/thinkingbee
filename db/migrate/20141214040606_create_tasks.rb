class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.date :due_date
      t.integer :owner
      t.integer :task_category_id
      t.integer :task_status_id
      t.integer :priority_id
      t.text 	  :notes
      t.integer :company_id
      t.timestamps
    end

   	add_index :tasks, :owner
   	add_index :tasks, :task_category_id
   	add_index :tasks, :task_status_id
   	add_index :tasks, :priority_id
    add_index :tasks, :company_id
  end
end
