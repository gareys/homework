class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :user_id
      t.string :title
      t.text :problem
      t.text :solution

      t.timestamps
    end
  end
end
