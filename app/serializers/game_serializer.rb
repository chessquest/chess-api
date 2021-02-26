require 'fast_jsonapi'

class GameSerializer
  include FastJsonapi::ObjectSerializer
  # 
  attributes :fen, :black, :white
  # require 'pry'; binding.pry

  #  def self.new(game_arg)
  #   json_response = {} 
  #   json_response[:data] = []
  #   merchants_arg.each do |merchant|
  #     merchant_list = {
  #       id: merchant.id,
  #       type: "merchant",
  #       attributes: {}
  #     }
  #     merchant_list[:attributes][:id]   = merchant.id
  #     merchant_list[:attributes][:name] = merchant.name
  #     json_response[:data] << merchant_list
  #   end
  #   json_response
  # end
end
# {
#   "data": {
#     "id": "1",
#     "type": "game",
#     "attributes": {
#       "fen": "this_is_the_fen_string",
#       "white": {
#         "rating": 1748,
#         "result": "win",
#         "@id": "https://api.chess.com/pub/player/erik",
#         "username": "erik"
#       },
#       "black": {
#         "rating": 1315,
#         "result": "checkmated",
#         "@id": "https://api.chess.com/pub/player/cirrus_g",
#         "username": "Cirrus_G"
#       }
#     }
#   }
# }
