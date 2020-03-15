class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :image
      t.string :content
      t.string :address

      t.timestamps
    end
  end
end
