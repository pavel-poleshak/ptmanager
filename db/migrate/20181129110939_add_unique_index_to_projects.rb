class AddUniqueIndexToProjects < ActiveRecord::Migration[5.2]
  def change
    remove_index :projects, :name
    add_index :projects, :name, unique: true  
  end
end
