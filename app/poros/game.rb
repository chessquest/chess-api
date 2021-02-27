require './app/controllers/games_controller'
require './app/facades/games_facade'

class Game
  attr_reader :fen, :white, :black, :id

  def initialize(data)
    @fen = data[:fen]
    @white = data[:white]
    @black = data[:black]
    @id = data[:url]
  end

end