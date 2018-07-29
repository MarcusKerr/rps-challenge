require 'player'
describe Player do
  subject(:waka) { Player.new('Waka') }
  it 'returns the players name' do
    expect(waka.name).to eq 'Waka'
  end 
end
