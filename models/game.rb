# Game class
class Game
  attr_reader :player, :bot

  def self.create(player, bot)
    @game = Game.new(player, bot)
  end

  def self.instance
    @game
  end

  def initialize(player, bot)
    @player = player
    @bot = bot
  end

  def player_wins?
    @player.move == 'Rock' && @bot.move == 'Scissors' ||
    @player.move == 'Paper' && @bot.move == 'Rock' ||
    @player.move == 'Scissors' && @bot.move == 'Paper'
  end

  def draw?
    @player.move == @bot.move
  end

  def result
    return "You win!" if player_wins?
    return "It a draw" if draw?
    return "You Lose!" if !player_wins? && !draw?
  end

  private :player_wins?, :draw?
end
