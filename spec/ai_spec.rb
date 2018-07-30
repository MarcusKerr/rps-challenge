require 'ai'
describe Ai do
  subject(:ai) { described_class.new }

  describe '#initialize' do
    it 'initializes with items in the array' do
      expect(ai.move).not_to be_empty
    end 
  end

  describe '#move' do
    it 'returns rock, paper or scissors from array' do
      # allow(ai).to receive(:move) { ['Rock', 'Paper', 'Scissors', 'Lizard', 'Spock'].sample }
      # expect(ai.move).to eq 'Rock' 
    end
  end 
end
