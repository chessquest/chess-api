class GamesController < Sinatra::Base
  get '/api/v1/game' do
    search_params = params[:find_player]
    game = GamesFacade.find_game(search_params)
    body GameSerializer.new(game).to_json
  end
end
