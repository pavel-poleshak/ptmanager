class AddComplexIndexToTaskItems < ActiveRecord::Migration[5.2]
  def change
    add_index :task_items, [:task_id, :user_id], unique: true
  end
end
