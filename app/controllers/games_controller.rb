require './config/environment'
require 'sinatra/base'
require './app/controllers/games_controller'
require './app/facades/games_facade'
require './app/serializers/game_serializer'
require './app/poros/game'

class GamesController < Sinatra::Base
  # get "/api/v1/game/" do
  # response = GamesFacade.games_search(search_params)
    # hash = { hello: "World" }
    # body hash.to_json
  # end

  get "/api/v1/game/" do
    conn           ||= Faraday.new(url: 'https://api.chess.com')
    archive_response = conn.get("pub/player/magnus-carlson/games/archives")
    archive_json = JSON.parse(archive_response.body, symbolize_names: true)
    archive_game = archive_json[:archives].last
    game_response = Faraday.get(archive_game)
    games_json = JSON.parse(game_response.body, symbolize_names: true)
    chosen_game = games_json[:games].sample
    game =  Game.new(chosen_game)
    # a = GameSerializer.new(game)
    require 'pry'; binding.pry
    body GameSerializer.new(game).to_json
    render json: GameSerializer.new(game)
  end
end
