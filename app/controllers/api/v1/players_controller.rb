# frozen_string_literal: true

class Api::V1::PlayersController < ApplicationController

  def index
    players = Player.all
    # render json: syllabuses
    render json: PlayerSerializer.new(players)
  end

  def create
    player = Player.new(player_params)
    #byebug
    if player.save
      render json: PlayerSerializer.new(player), status: :accepted
    else
      render json: { errors: player.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private

  def player_params
    params.require(:player).permit(:username, :city, :state, :game_id)
  end
end
