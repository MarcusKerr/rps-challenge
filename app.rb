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
    erb :play
  end

  # Start the server if ruby file executed directly
  run! if app_file == $0
end
