require 'spec_helper'
require 'json'
require 'rspec'
require './app/controllers/games_controller'

def app
  GamesController
end
describe 'it can hit the api/v1/game end point' do
  it 'can return a single game' do
  params = {
      :find_player => 'magnus-carlson'
      }

    get '/api/v1/game', params

    expect(last_response.status).to eq(200)
    expect(last_response.body).to be_a(String)
    response = JSON.parse(last_response.body, symbolize_names: true)
    
    expect(response).to be_a(Hash)
    expect(response[:data]).to be_a(Hash)

    expect(response[:data][:id]).to be_a(String)
    expect(response[:data][:type]).to be_a(String)

    expect(response[:data][:attributes]).to be_a(Hash)
    expect(response[:data][:attributes][:fen]).to be_a(String)
    expect(response[:data][:attributes][:black]).to be_a(Hash)
    expect(response[:data][:attributes][:white]).to be_a(Hash)
    expect(response[:data][:attributes][:black][:rating]).to be_an(Integer)
    expect(response[:data][:attributes][:white][:rating]).to be_an(Integer)
    expect(response[:data][:attributes][:black][:result]).to be_a(String)
    expect(response[:data][:attributes][:white][:result]).to be_a(String)
    expect(response[:data][:attributes][:black][:@id]).to be_a(String)
    expect(response[:data][:attributes][:white][:@id]).to be_a(String)
    expect(response[:data][:attributes][:black][:username]).to be_a(String)
    expect(response[:data][:attributes][:white][:username]).to be_a(String)

   end
end
