class AddFilledToProjects < ActiveRecord::Migration[5.0]
  def change
    add_column :projects, :filled, :integer
  end
end
