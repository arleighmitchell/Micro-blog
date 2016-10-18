class CreatePostsTable < ActiveRecord::Migration
  def change
  	create_table :posts do |t|
  		t.string :author, default: ""
  		t.text :body, default: ""
  	end
  end
end