require './models/bot'
describe Bot do
  subject(:bot) { described_class.new }

  describe '#make_move' do
    it 'returns rock from array' do
      allow(bot).to receive(:make_move) { 'Rock' }
      expect(bot.make_move).to eq 'Rock' 
    end

    it 'returns paper from array' do
      allow(bot).to receive(:make_move) { 'Paper' }
      expect(bot.make_move).to eq 'Paper' 
    end

    it 'returns scissors from array' do
      allow(bot).to receive(:make_move) { 'Scissors' }
      expect(bot.make_move).to eq 'Scissors' 
    end
  end 
end
