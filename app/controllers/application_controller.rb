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

  
  get '/actualgift' do
    erb :actualgift
  end
  
  post '/actualgift' do
    @gifts = Gift.all
    @mothersday = []
    @fathersbirthday = []
    @mothersbirthday = []
    @gifts.each do |gift|
      if gift.categories.first.category_name == "Mothers Day"
        @mothersday << gift
      elsif gift.categories.first.category_name == "Fathers Birthday"
        @fathersbirthday << gift
      elsif gift.categories.first.category_name == "Mothers Birthday"
        @mothersbirthday << gift
      end
    end
    if params[:event] == "Mother's Day"
      @gift = @mothersday.sample
    elsif params[:event] == "Father's Birthday"
      @gift = @fathersbirthday.sample
    elsif params[:event] == "Mother's Birthday"
      @gift = @mothersbirthday.sample
    end
    erb :actualgift
  end

 
  get '/suggestgift' do
    erb :suggestgift
  end




end
