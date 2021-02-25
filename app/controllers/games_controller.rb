require './config/environment'
require 'sinatra/base'
class GamesController < Sinatra::Base
  get "/api/v1/game/" do
    hash = { hello: "World" }
    body hash.to_json
  end
end
