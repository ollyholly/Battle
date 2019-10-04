require 'attack'

describe Attack do
  subject(:object) { described_class }
  let(:player) { double :player }

  describe '.run' do
    it 'damages the player' do
      expect(player).to receive(:receive_damage)
      object.run(player)
    end
  end
end 