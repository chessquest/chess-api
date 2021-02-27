class GamesController < Sinatra::Base
  before do
    content_type 'application/json'
  end
  
  get '/api/v1/game' do
    search_params = params[:find_player]
    game = GamesFacade.find_game(search_params)
    body GameSerializer.new(game).to_json
  end
end
