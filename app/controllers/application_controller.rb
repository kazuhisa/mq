class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :player

  private
  def player
    @player = Player.first
  end
end
