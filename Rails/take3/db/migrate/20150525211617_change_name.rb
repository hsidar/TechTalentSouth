class ChangeName < ActiveRecord::Migration
  def change
    rename_column(:albums, :Name, :name)
    rename_column(:songs, :Name, :name)
  end
end
