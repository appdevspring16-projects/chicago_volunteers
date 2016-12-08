class AddIllustrationToProjects < ActiveRecord::Migration[5.0]
  def change
    add_column :projects, :illustration, :string
  end
end
