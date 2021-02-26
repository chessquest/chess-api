require 'spec_helper'
require 'json'
require 'rspec'
require './app/controllers/games_controller'

def app
  GamesController
end
describe 'it can hit the api/v1/game end point' do
  it 'can return a single game' do
    WebMock.allow_net_connect!

    get '/api/v1/game/'

    # stub_request(:get, "https://api.chess.com/pub/player/magnus-carlson/games/archives").
    #      with(
    #        headers: {
    #       'Accept'=>'*/*',
    #       'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
    #       'User-Agent'=>'Faraday v1.3.0'
    #        }).
    #      to_return(status: 200, body: "", headers: {})
   end
end
