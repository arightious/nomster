class AlterPhotosAddPicture < ActiveRecord::Migration
  def change
  	remove_column :users, :picture
  	add_column :photos, :picture, :string
  end
end
