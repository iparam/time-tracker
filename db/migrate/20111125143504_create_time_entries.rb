class CreateTimeEntries < ActiveRecord::Migration
  def change
    create_table :time_entries do |t|
      t.string :name
      t.float :start_time
      t.float :end_time
      t.datetime :created_date
      t.integer :task_id

      t.timestamps
    end
  end
end
