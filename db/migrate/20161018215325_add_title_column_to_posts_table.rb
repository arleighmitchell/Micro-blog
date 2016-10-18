class AddTitleColumnToPostsTable < ActiveRecord::Migration
  def change
  	add_column :posts, :title, :string, default: ""
  	remove_column :posts, :author
  end
end
