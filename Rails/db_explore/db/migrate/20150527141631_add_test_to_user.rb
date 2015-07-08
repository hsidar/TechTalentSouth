class AddTestToUser < ActiveRecord::Migration
  def change
    add_column :users, :test, :text
  end
end
