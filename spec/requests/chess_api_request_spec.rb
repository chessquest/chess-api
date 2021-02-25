require 'spec_helper'
require 'json'
require 'rspec'
require './app/controllers/games_controller'


def app
  GamesController
end

describe "Game endpoint" do
  describe "Happy path" do
    it "Can return a valid FEN" do
      get "/api/v1/game/"

      json = JSON.parse(last_response.body, symbolize_headers: true)

      expect(last_response.status).to eq(200)
    end
  end
end
