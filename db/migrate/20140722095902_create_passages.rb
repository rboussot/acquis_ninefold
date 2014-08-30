class CreatePassages < ActiveRecord::Migration
  def change
    create_table :passages do |t|
      t.integer :oeuvre_id
      t.string :titre_passage
      t.video :string

      t.timestamps
    end
  end
end
