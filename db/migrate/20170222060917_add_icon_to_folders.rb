class AddIconToFolders < ActiveRecord::Migration
  def change
    add_column :folders, :icon, :string
  end
end
