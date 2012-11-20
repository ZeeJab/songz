class DeleteColumnIds < ActiveRecord::Migration
  def change
  	remove_column :albums, :artist_id
  	remove_column :songs, :artist_id
  	remove_column :songs, :album_id
  end
end
