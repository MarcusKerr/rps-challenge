require 'sinatra/base'
require_relative 'lib/player'
require_relative 'lib/ai'
class Rps < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    $player = Player.new(params[:player_name])
    redirect '/play'
  end

  get '/play' do
    @name = $player.name
    @move = session[:move]
    @ai_move = session[:ai_move]
    erb :play
  end

  post '/play' do
    session[:move] = params[:move]
    session[:ai_move] = Ai.new.move
    redirect '/play'
  end

  # Start the server if ruby file executed directly
  run! if app_file == $0
end
