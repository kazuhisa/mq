class BattleController < ApplicationController
  def index
    @enemy = Enemy.all.choice
  end
end
