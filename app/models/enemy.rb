class Enemy < ActiveRecord::Base
  attr_accessible :attack, :defence, :hp, :max_hp, :name
end
