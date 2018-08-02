# Bot class
class Bot
  def initialize
    @move_options = ['Rock', 'Paper', 'Scissors']
  end

  def move
    @move_options.sample
  end
end
