class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string      :name,null: false
      t.string      :mail,null: false
      t.string      :password,null: false
      t.timestamps null: true
    end
  end
end
