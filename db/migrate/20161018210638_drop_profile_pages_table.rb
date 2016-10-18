class DropProfilePagesTable < ActiveRecord::Migration
  def change
  	drop_table :profile_page
  end
end
