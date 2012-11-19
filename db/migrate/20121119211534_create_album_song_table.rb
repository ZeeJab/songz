class CreateAlbumSongTable < ActiveRecord::Migration
 def change
    create_table :albums_songs do |t|
      t.integer :album_id
      t.integer :song_id
    end
  end
end
