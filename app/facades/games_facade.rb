require './app/controllers/games_controller'
require './app/serializers/game_serializer'
require './app/services/games_service'
require './app/poros/game'

class GamesFacade 
  class << self
    def find_game(search_params)
      chosen_game = GamesService.archive_game_search(search_params)
      Game.new(chosen_game[:games].last)
    end
  end

end