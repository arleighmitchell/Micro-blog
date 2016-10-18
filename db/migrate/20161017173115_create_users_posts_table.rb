class CreateUsersPostsTable < ActiveRecord::Migration
  def change
  	create_table :usersposts do |t|
  		t.integer :user_id, default: 0
  		t.integer :post_id, default: 0
  	end
  end
end
