class GamesService
  class << self
    def conn
      Faraday.new(url: 'https://api.chess.com')
    end
  
    def player_archive_search(search_params)
      response = conn.get("/pub/player/#{search_params}/games/archives")
      JSON.parse(response.body, symbolize_names: true)
    end
  
    def archive_game_search(search_params)
      archive_json = player_archive_search(search_params)
      archive_game = archive_json[:archives].last
      game_response = Faraday.get(archive_game)
      games_json = JSON.parse(game_response.body, symbolize_names: true)
  end
 end
end
