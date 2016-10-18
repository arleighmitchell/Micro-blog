class AddAgeToUser < ActiveRecord::Migration
  def change
  	add_column :users, :age, :integer, default: 0
  end
end
