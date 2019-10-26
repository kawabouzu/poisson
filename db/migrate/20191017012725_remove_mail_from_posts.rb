class RemoveMailFromPosts < ActiveRecord::Migration[5.2]
  def change
    remove_column :posts, :mail, :string
    add_column :posts, :date, :date
    add_column :posts, :recipe, :text
  end
end
