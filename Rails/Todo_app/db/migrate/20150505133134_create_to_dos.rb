class CreateToDos < ActiveRecord::Migration
  def change
    create_table :to_dos do |t|
      t.string :title
      t.text :notes
      t.date :due
      t.boolean :done

      t.timestamps null: false
    end
  end
end
