class Player < ActiveRecord::Base
  attr_accessible :attack, :defence, :herb, :hp, :max_hp, :name
end
