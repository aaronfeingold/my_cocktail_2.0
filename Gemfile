source 'http://rubygems.org'

ruby '3.0.0'

gem 'sinatra'
gem 'activerecord'
gem 'sinatra-activerecord'
gem 'rake'
gem 'require_all'
gem 'thin'
gem 'shotgun'
gem 'pry'
gem 'bcrypt'
gem 'dotenv'
gem 'rack-flash3'
gem 'rack'


group :test do
  gem 'rspec'
  gem 'capybara'
  gem 'rack-test'
  gem 'database_cleaner', git: 'https://github.com/bmabey/database_cleaner.git'
end

group :development, :test do
  gem 'sqlite3'
  gem "tux"
 end

group :production do
  gem 'pg'
end