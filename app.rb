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

  post '/play' do
    @game.player.move = params[:move]
    @bot_move = @game.bot.make_move
    # @result = @game.result
    redirect '/results'
  end

  get '/play' do
    @name = @game.player.name
    @move = @game.player.move
    @bot_move = @game.bot.move
    # @result = @result
    erb :play
  end

  get '/results' do
    @move = @game.player.move
    @bot_move = @game.bot.move
    @result = @game.result
    erb :results
  end
  

  # post '/results' do
  #   @game.player.move = params[:move]
  #   redirect '/results'
  # end

  # get '/results' do
  #   @move = @game.player.move
  #   @bot_move = @game.bot.make_move
  #   @result = @game.result
  #   erb :results
  # end

  # Start the server if ruby file executed directly
  run! if app_file == $0
end
