class AddImageToEnemies < ActiveRecord::Migration
  def change
    add_column :enemies, :image, :string
  end
end
