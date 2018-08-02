require 'game'
describe Game do
  subject(:game) { described_class.new(player,bot) }
  let(:player)   { double :player }
  let(:bot)   { double :bot }

  describe '#player' do
    it 'retrieves the player' do
      expect(game.player).to eq player
    end 
  end

  describe '#bot' do
    it 'retrives the bot' do
      expect(game.bot).to eq bot
    end
  end
end
