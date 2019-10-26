class RenameNameColumnToposts < ActiveRecord::Migration[5.2]
  def change
    rename_column :posts, :name, :shop_name
    rename_column :posts, :mail, :mail
    rename_column :posts, :password, :menu
  end
end
