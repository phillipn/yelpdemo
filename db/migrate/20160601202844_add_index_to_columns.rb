class AddIndexToColumns < ActiveRecord::Migration
  def change
  	add_index :reviews, :created_at
  	add_index :restaurants, :name
  end
end
