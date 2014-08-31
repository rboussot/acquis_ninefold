class AddMouvementIdToOeuvres < ActiveRecord::Migration
  def change
    add_column :oeuvres, :mouvement_id, :integer
  end
end
