class AddGenreIdToOeuvres < ActiveRecord::Migration
  def change
    add_column :oeuvres, :genre_id, :integer
  end
  add_index :genres, :genre_id
end
