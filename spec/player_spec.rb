require './models/player'
describe Player do
  subject(:waka) { Player.new('Waka', move) }
  let(:move)     { 'Rock' }

  describe '#name' do
    it 'returns the players name' do
      expect(waka.name).to eq 'Waka'
    end
  end
  
  describe '#move' do
    it 'returns the players move' do
      expect(waka.move).to eq 'Rock'
    end
  end
end
