class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body

      t.timestamps
    end
  end

  create_table :users do |t|
    t.belongs_to :post, index: true
    t.string :post_id
    t.timestamps null: false
end
