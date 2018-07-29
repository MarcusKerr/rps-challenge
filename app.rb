require 'sinatra/base'
require_relative 'lib/player'
class Rps < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/names' do
    $player = Player.new(params[:player_name])
    redirect '/play'
  end

  get '/play' do
    @player_name = $player.name
    erb :play
  end

  # Start the server if ruby file executed directly
  run! if app_file == $0
end
