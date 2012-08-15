class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :name
      t.integer :max_hp
      t.integer :hp
      t.integer :attack
      t.integer :defence
      t.integer :herb

      t.timestamps
    end
  end
end
