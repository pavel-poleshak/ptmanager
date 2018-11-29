class AddIndexToTasks < ActiveRecord::Migration[5.2]
  def change
    add_index :tasks, [:id, :project_id], unique: true
  end
end
