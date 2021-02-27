require './config/environment'
require 'sinatra/base'
require './app/controllers/games_controller'
require './app/facades/games_facade'
require './app/serializers/game_serializer'
require './app/poros/game'

class GamesController < Sinatra::Base

  get "/api/v1/game" do
        search_params = params[:find_player]
        game = GamesFacade.find_game(search_params)

        body GameSerializer.new(game).to_json
      end
    end
    