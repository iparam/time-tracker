class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.text :description
      t.float :estimated_budget
      t.float :hourly_rate
      t.float :estimated_hour
      t.datetime :start_date
      t.datetime :end_date
      t.integer :manager_id
      t.integer :client_id
      t.timestamps
    end
    add_index :projects,:client_id
  end
end
