class CreateLienthemes < ActiveRecord::Migration
  def change
    create_table :lienthemes do |t|
      t.integer :oeuvre_id
      t.integer :theme_id

      t.timestamps
    end
    add_index :oeuvres, :id
    add_index :themes, :id
  end
end
