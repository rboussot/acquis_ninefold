class RemoveGenreAndMouvementFromOeuvres < ActiveRecord::Migration
  def change
    remove_column :oeuvres, :genre, :string
    remove_column :oeuvres, :mouvement, :string
  end
end
