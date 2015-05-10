require './config/environment'
require 'pry'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
      enable :sessions
    set :session_secret, 'flatironrulz'
  end

  get '/' do
    erb :index
  end
 
  get '/findgift' do 
    erb :findgift
  end

    post '/findgift' do
  # new_gift = Gift.new(:giftname => params[:giftname], :url => params[:url], :photo> params[:photo], :price => params[:price]) 
  end
  get '/actualgift' do
    erb :actualgift
  end
 
  get '/suggestgift' do
    erb :suggestgift
  end



end