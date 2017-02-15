class ChangeDataType < ActiveRecord::Migration[5.0]
  def change
    change_column :songs, :rating, :string
    remove_column :songs, :genre, :string 
  end
end
