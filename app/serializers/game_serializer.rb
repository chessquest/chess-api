require 'fast_jsonapi'

class GameSerializer
  include FastJsonapi::ObjectSerializer

  attributes :fen, :black, :white
end
