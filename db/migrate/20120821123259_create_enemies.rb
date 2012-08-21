class CreateEnemies < ActiveRecord::Migration
  def change
    create_table :enemies do |t|
      t.string :name
      t.integer :attack
      t.integer :defence
      t.integer :hp
      t.integer :max_hp

      t.timestamps
    end
  end
end
