class AddAlbumToSongs < ActiveRecord::Migration[7.0]
  def change
    add_column :songs, :album, :string
  end
end
