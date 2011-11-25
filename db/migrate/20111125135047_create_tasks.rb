class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.text :description
      t.integer :assigned_id
      t.datetime :start_date
      t.datetime :end_date
      t.float :estimated_hour
      t.float :total_hour
      t.integer :project_id
      t.integer :user_id
      t.timestamps
    end
    add_index :tasks,:project_id
  end
end
