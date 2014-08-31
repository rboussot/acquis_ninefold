class CreateOeuvres < ActiveRecord::Migration
  def change
    create_table :oeuvres do |t|
      t.string :titre_oeuvre
      t.integer :auteur_id
      t.string :genre
      t.string :mouvement
      t.integer :date

      t.timestamps
    end
  end
end
