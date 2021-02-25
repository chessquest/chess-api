require 'spec_helper'
require 'json'
require 'rspec'
require './app/controllers/games_controller'


def app
  GamesController
end

describe "Game endpoint" do
  describe "Happy path" do
    it "Can get a response" do

      json_response = File.read('spec/fixtures/game.json')

      stub_request(:get, "/api/v1/game/").
      to_return(status: 200, body: json_response)
    end
  end
end
