require 'game'

describe Game do
  let(:player) { double(:player, name: "Olly", hp: 60) }

  describe '#attack' do
    it 'can attack the other player' do
      expect(player).to receive(:receive_damage)
      subject.attack(player)
    end
  end

end
