require './app/poros/game'

describe 'it can hit the api/v1/game end point' do
  it 'can return a single game' do
    game_data = {
      :url=>"https://www.chess.com/game/daily/73767866",
      :fen=>"rnbqkb1r/pppppp1p/5np1/8/2PP4/4P3/PP3PPP/RNBQKBNR b KQkq - 1 3",
      :white=>{:rating=>1481, :result=>"win", :@id=>"https://api.chess.com/pub/player/princechanhassen", :username=>"princechanhassen"},
      :black=>{:rating=>1200, :result=>"timeout", :@id=>"https://api.chess.com/pub/player/magnus-carlson", :username=>"magnus-carlson"}}

    game = Game.new(game_data)

    expect(game).to be_a Game
    expect(game.id).to eq(game_data[:url])
    expect(game.fen).to eq(game_data[:fen])
    expect(game.black).to eq(game_data[:black])
    expect(game.white).to eq(game_data[:white])
  end
end