class AddForeignKey < ActiveRecord::Migration
  def change
  	add_column :posts, :user_id, :integer, default: 0 
  end
end
