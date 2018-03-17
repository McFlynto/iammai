# Add sort_index column to the projects table
class AddSortIndexToProjects < ActiveRecord::Migration[5.1]
  def change
    add_column :projects, :sort_index, :integer
  end
end
