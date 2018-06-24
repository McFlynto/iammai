class AddLinkToProjects < ActiveRecord::Migration[5.1]
  def change
    add_column :projects, :link_name, :string
    add_column :projects, :link_url, :string
  end
end
