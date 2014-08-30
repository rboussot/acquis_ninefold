class CreateUserlitts < ActiveRecord::Migration
  def change
    create_table :userlitts do |t|
      t.integer :oeuvre_id
      t.integer :user_id

      t.timestamps
    end
  end
end
