# AI class
class Ai 
  attr_reader :move
  def initialize
    @move = ['Rock', 'Paper', 'Scissors', 'Spock', 'Lizard'].sample
  end
end
