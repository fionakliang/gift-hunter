require 'bundler'
Bundler.require

require './app/models/gift'

configure :development do
  set :database, "sqlite3:db/database.db"
end
