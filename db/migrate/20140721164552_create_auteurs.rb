class CreateAuteurs < ActiveRecord::Migration
  def change
    create_table :auteurs do |t|
      t.string :prenom
      t.string :nom
      t.string :nom_entier
      t.integer :date_n
      t.integer :date_m

      t.timestamps
    end
  end
end
