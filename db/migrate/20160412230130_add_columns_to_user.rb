class AddColumnsToUser < ActiveRecord::Migration
  def change
  	add_column :users, :gender, :string
  	add_column :users, :desired_gender, :string
  	add_column :users, :height_feet, :integer
  	add_column :users, :height_inches, :integer
  	add_column :users, :zip_code, :integer
  	add_column :users, :image_src, :string
  end
end
