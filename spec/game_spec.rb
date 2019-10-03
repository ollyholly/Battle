require 'game'

describe Game do
  subject(:game) { described_class.new(player1, player2)}
  let(:player1) { double(:player) }
  let(:player2) { double(:player) }

  describe '#initialize' do

    it 'is initialized with p1 and p2' do
      expect(game.player1).to eq player1
      expect(game.player2).to eq player2
    end

  end

  describe '#attack' do
    it 'can attack the other player' do
      expect(player1).to receive(:receive_damage)
      game.attack(player1)
    end
  end

  describe '#switch_turn' do
    it "switches turns between player 1 and player 2" do
      game.turn = player1
      game.switch_turn
      expect(game.turn).to eq player2
    end
  end

end
