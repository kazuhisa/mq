class Enemy < ActiveRecord::Base
  attr_accessible :attack, :defence, :hp, :max_hp, :name

  # HPを回復させて登場
  def self.enter(id)
    enemy = self.find(id)
    enemy.hp = enemy.max_hp
    enemy.save!
    enemy
  end
end
