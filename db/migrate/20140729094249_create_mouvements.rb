class CreateMouvements < ActiveRecord::Migration
  def change
    create_table :mouvements do |t|
      t.string :titre_mouvement

      t.timestamps
    end
  end
end
