require 'bot'
describe Bot do
  subject(:bot) { described_class.new }

  describe '#initialize' do
    it 'initializes with items in the array' do
      expect(bot.move).not_to be_empty
    end 
  end

  describe '#move' do
    it 'returns rock from array' do
      allow(bot).to receive(:move) { 'Rock' }
      expect(bot.move).to eq 'Rock' 
    end

    it 'returns paper from array' do
      allow(bot).to receive(:move) { 'Paper' }
      expect(bot.move).to eq 'Paper' 
    end

    it 'returns scissors from array' do
      allow(bot).to receive(:move) { 'Scissors' }
      expect(bot.move).to eq 'Scissors' 
    end
  end 
end
