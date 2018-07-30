require 'ai'
describe Ai do
  subject(:ai) { described_class.new }

  describe '#initialize' do
    it 'initializes with items in the array' do
      expect(ai.move).not_to be_empty
    end 
  end

  describe '#move' do
    it 'returns rock from array' do
      allow(ai).to receive(:move) { 'Rock' }
      expect(ai.move).to eq 'Rock' 
    end

    it 'returns paper from array' do
      allow(ai).to receive(:move) { 'Paper' }
      expect(ai.move).to eq 'Paper' 
    end

    it 'returns scissors from array' do
      allow(ai).to receive(:move) { 'Scissors' }
      expect(ai.move).to eq 'Scissors' 
    end
  end 
end
