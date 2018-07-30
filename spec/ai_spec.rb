require 'ai'
describe Ai do
  subject(:ai) { described_class.new }

  it 'responds to move method' do
    expect(ai).to respond_to(:move)
  end
end
