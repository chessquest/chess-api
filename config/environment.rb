require 'sinatra/base'
require 'bundler'
Bundler.require(:default)
Bundler.require(Sinatra::Base.environment)

require 'require_all'
require_all 'app'
