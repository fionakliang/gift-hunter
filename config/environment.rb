require 'bundler'
Bundler.require

require './app/models/category'
require './app/models/gift'
require './app/models/gift_categories'

configure :development do
  set :database, "sqlite3:db/database.db"
end
