class DropUserPostsTable < ActiveRecord::Migration
  def change
  	drop_table :usersposts
  end
end
