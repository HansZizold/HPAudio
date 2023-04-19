class RemoveAlbumFromSongs < ActiveRecord::Migration[7.0]
  def change
    remove_reference :songs, :album, null: false, foreign_key: true
  end
end
