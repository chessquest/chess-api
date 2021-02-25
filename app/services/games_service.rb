require './app/controllers/games_controller'
require './app/facades/games_facade'

class GamesService
  def self.conn
    Faraday.new(url: 'https://api.chess.com') do |req|
  end

  def self.games_search
    /pub/player/MAGnuS-CARLSen/games/archives
  end
end
