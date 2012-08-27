class BattleController < ApplicationController
  def index
    @enemy = Enemy.all.choice
  end

  def start
    enemy = Enemy.enter(params[:enemy_id])
    redirect_to :action => :fight, :enemy_id => enemy.id
  end

  def fight
    @enemy = Enemy.find(params[:enemy_id])
    @attack_point = player.attack + rand(player.attack) - @enemy.defence
    @enemy.hp -= @attack_point
    @enemy.save
  end

  def defence
    @enemy = Enemy.find(params[:enemy_id])
    @attack_point = @enemy.attack + rand(@enemy.attack) - player.defence
    @attack_point = 0 if @attack_point < 0
    @player.hp -= @attack_point
    @player.save
  end
end
