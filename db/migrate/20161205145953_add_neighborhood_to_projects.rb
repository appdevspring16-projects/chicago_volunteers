class AddNeighborhoodToProjects < ActiveRecord::Migration[5.0]
  def change
    add_column :projects, :fieldname, :string
  end
end
