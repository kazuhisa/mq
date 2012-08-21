class ExplorerController < ApplicationController
  def index
    if rand(5) == 1
      redirect_to :controller => :battle
    end
  end
end
