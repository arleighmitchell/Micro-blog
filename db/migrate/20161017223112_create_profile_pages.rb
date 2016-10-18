class CreateProfilePages < ActiveRecord::Migration
  def change
  	create_table :profile_page do |t|
  	  t.integer :user_id
  	  t.integer :post_id
  	end
  end
end
