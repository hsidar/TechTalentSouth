class RemoveArtistString < ActiveRecord::Migration
  def change
    remove_column :artists, :string
  end
end
