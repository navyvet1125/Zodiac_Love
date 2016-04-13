class RemoveImgSrcFromUser < ActiveRecord::Migration
  def change
  	remove_column :users, :image_src
  end
end
