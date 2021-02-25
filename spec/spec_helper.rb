ENV["RACK_ENV"] = "test"
require './config/environment'
require 'simplecov'
SimpleCov.start

require 'webmock/rspec'
require 'vcr'
require 'rack'

require 'bundler'

RSpec.configure do |config|
  config.include Rack::Test::Methods
  config.order = 'default'
  config.include WebMock::API
end

Bundler.require(:default, :test)
require File.expand_path('../../config/environment.rb', __FILE__)
