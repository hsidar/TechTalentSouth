class AddAlbumToArtists < ActiveRecord::Migration
  def change
    add_reference :artists, :album, index: true, foreign_key: true
  end
end
