class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :text
      t.string :category
      t.attachment :picture
      t.timestamps
    end
  end
end