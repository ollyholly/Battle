require 'player'

describe Player do

  subject(:bob) { described_class.new('Bob') }
  subject(:tom) { described_class.new('Tom') }
  let(:game) { double(:game)}

  it 'has a name' do
    expect(bob.name).to eq 'Bob'
  end

  it 'has a default HP' do
    expect(bob.hp).to eq described_class::DEFAULT_HP
  end

  describe '#receive_damage' do

    it 'an attack should decrease other player\'s HP' do
      expect{ tom.receive_damage }.to change { tom.hp }.by(-10)
    end

  end
end
