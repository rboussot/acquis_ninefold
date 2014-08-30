class CreateThemes < ActiveRecord::Migration
  def change
    create_table :themes do |t|
      t.string :titre_theme
      t.string :niveau

      t.timestamps
    end
  end
end
