class AddGenreToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :genre, :string
    add_column :posts, :fish_type, :string
  end
end
