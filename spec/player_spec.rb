require 'player'

describe Player do

  subject(:bob) { described_class.new('Bob') }
  subject(:tom) { described_class.new('Tom') }

  it 'has a name' do
    expect(bob.name).to eq 'Bob'
  end

  it 'has a default HP' do
    expect(bob.hp).to eq described_class::DEFAULT_HP
  end

  describe '#attack' do

    it 'player receives damage when attacked' do
      expect(tom).to receive(:receive_damage)
      bob.attack(tom)
    end

    it 'an attack should decrease other player\'s HP' do 
      expect{ bob.attack(tom) }.to change { tom.hp }.by(-10)
    end

  end

end