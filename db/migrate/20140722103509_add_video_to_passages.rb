class AddVideoToPassages < ActiveRecord::Migration
  def change
    add_column :passages, :video, :string
  end
end
