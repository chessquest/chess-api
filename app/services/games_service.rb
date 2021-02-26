require './app/controllers/games_controller'
require './app/facades/games_facade'

class GamesService
  def self.conn
    Faraday.new(url: 'https://api.chess.com')
  end

  def self.player_archive_search(search_params)
    conn.get("/pub/player/#{search_params}/player_archive/archives")
  end

  def self.archive_game_search(search_params)
    archive = player_archive_search(search_params)
    season = archive[:archives].last
    conn.get("pub/#{search_params}/erik/games/2021/02")
  end
end
