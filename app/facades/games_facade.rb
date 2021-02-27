class GamesFacade 
  class << self
    def find_game(search_params)
      chosen_game = GamesService.archive_game_search(search_params)
      Game.new(chosen_game[:games].last)
    end
  end

end