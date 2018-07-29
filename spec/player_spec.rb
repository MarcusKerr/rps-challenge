require 'player'
describe Player do
  subject(:waka) { Player.new('Waka') }

  describe '#name' do
    it 'returns the players name' do
      expect(waka.name).to eq 'Waka'
    end
  end 
end
