require 'sinatra/base'
require_relative 'lib/player'
class Rps < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:name] = params[:player_name]
    redirect '/play'
  end

  get '/play' do
    @name = session[:name]
    @move = session[:move]
    erb :play
  end

  post '/play' do
    session[:move] = params[:move]
    redirect '/play'
  end

  # Start the server if ruby file executed directly
  run! if app_file == $0
end
