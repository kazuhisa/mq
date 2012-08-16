module PlayersHelper
  def player_status
    player = Player.first
    render :partial => "layouts/status", :locals => {:player => player }
  end
end
