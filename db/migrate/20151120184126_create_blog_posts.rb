class CreateBlogPosts < ActiveRecord::Migration
  def change
    create_table :blog_posts do |t|
      t.text :title
      t.text :body
      t.datetime :time_posted

      t.timestamps null: false
    end
  end
end
