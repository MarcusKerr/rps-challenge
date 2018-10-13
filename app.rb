require 'sinatra/base'
require_relative 'models/game'
require_relative 'models/player'
require_relative 'models/bot'

class Rps < Sinatra::Base
  enable :sessions

  before do 
    @game = Game.instance
  end 
 
  get '/' do
    erb :index
  end

  post '/name' do
    player = Player.new(params[:player_name])
    @game = Game.create(player, Bot.new)
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  post '/play' do
    @game.player.move = params[:move]
    @game.bot.make_move
    redirect '/results'
  end

  get '/results' do
    erb :results
  end

  # Start the server if ruby file executed directly
  run! if app_file == $0
end
