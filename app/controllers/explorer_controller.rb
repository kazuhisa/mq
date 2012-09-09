class ExplorerController < ApplicationController
  def index
    if rand(5) == 1
      redirect_to :controller => :battle
    end
  end

  def start
    @player.revival
    redirect_to :action => :index
  end

  def restoration
    @player.hp += 10
    if @player.hp > @player.max_hp
      @player.hp = @player.max_hp
    end
    @player.herb -= 1
    @player.save!
    redirect_to :action => :index
  end
end
