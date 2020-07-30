class Api::V1::PlayersController < ApplicationController

  def index
    players = Player.all
    # render json: @syllabuses
    render json: PlayerSerializer.new(players)
  end
end

def create
  player.new(player_params)
  if player.save
    render json: player, status: :accepted
  else
    render json: { errors: player.errors.full_messages }, status: :unprocessible_entity
  end
end

private

def player_params
  params.require(:player).permit(:username, :city, :state, :game_id)
end
end
