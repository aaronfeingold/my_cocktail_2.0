ENV['SINATRA_ENV'] ||= "development"

require 'bundler/setup'
require 'dotenv/load'
require 'securerandom'

Bundler.require(:default, ENV['SINATRA_ENV'])


require './app/controllers/application_controller'
require_all 'app'

