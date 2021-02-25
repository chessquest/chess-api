require './config/environment'
require 'sinatra/base'
require './app/controllers/games_controller'
require './app/facades/games_facade'
require './app/serializers/game_serializer'

class GamesController < Sinatra::Base
  get "/api/v1/game/" do
    hash = { hello: "World" }
    body hash.to_json
  end
end
