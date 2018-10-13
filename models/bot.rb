# Bot class
class Bot
  attr_reader :move

  def initialize
    @move_options = ['Rock', 'Paper', 'Scissors']
  end

  def make_move
    @move = @move_options.sample
  end
end
