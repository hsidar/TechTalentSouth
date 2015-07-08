class CreateContents < ActiveRecord::Migration
  def change
    create_table :contents do |t|
      t.references :artist, index: true, foreign_key: true
      t.references :song, index: true, foreign_key: true
      t.references :album, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
