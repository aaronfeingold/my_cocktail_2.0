ENV['SINATRA_ENV'] ||= "development"

require 'bundler/setup'
require 'dotenv/load'
require 'securerandom'



Bundler.require(:default, ENV['SINATRA_ENV'])


ShakenNotStirred.configure do |config|
  config.api_key = "DrXM49erOTZUQV8QQdNy7Att"
end


ActiveRecord::Base.establish_connection(
  :adapter => "sqlite3",
  :database => "db/#{ENV['SINATRA_ENV']}.sqlite"
)

require './app/controllers/application_controller'
require_all 'app'

