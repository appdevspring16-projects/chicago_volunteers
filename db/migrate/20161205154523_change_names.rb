class ChangeNames < ActiveRecord::Migration[5.0]
  def change
    rename_column :projects, :fieldname, :address
  end
end
