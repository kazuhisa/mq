class Player < ActiveRecord::Base
  attr_accessible :attack, :defence, :herb, :hp, :max_hp, :name

  def revival
    self.hp = self.max_hp
    self.save!
  end
end
