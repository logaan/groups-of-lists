class CreateGroupsTasks < ActiveRecord::Migration
  def change
    create_table :groups_tasks, :id => false do |t|
      t.integer :group_id
      t.integer :task_id

      t.timestamps
    end
  end
end
