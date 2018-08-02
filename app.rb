require 'sinatra/base'
require_relative 'lib/game'
require_relative 'lib/player'
require_relative 'lib/bot'
class Rps < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    $game = Game.new(Player.new(params[:player_name]), Bot.new)
    redirect '/play'
  end

  get '/play' do
    @name = $game.player.name
    erb :play
  end

  post '/results' do
    $game.player.move = params[:move]
    $bot_move = $game.bot.move
    redirect '/results'
  end

  get '/results' do
    @move = $game.player.move
    @bot_move = $bot_move
    erb :results
  end

  # Start the server if ruby file executed directly
  run! if app_file == $0
end
