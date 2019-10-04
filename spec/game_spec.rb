require 'game'

describe Game do
  subject(:game) { described_class.new(player1, player2)}
  subject(:finished_game) { described_class.new(dead_player, player2) }
  let(:player1) { double :player, hp: 60 }
  let(:player2) { double :player, hp: 60 }
  let(:dead_player) { double :player, hp: 0 }

  describe '#initialize' do

    it 'is initialized with p1 and p2' do
      expect(game.player1).to eq player1
      expect(game.player2).to eq player2
    end

    it 'initializes with p1\'s turn' do
      expect(game.current_turn).to eq player1
    end
  end

  describe '#game_over?' do
    it 'returns false if no-one is at 0HP' do
      expect(game.game_over?).to be false
    end
    
    it 'returns true if at least one player is at 0HP' do
      expect(finished_game.game_over?).to be true
    end
  end

  describe '#loser' do
    it 'returns a player on less than 0HP' do
      expect(finished_game.loser).to eq dead_player
    end
  end

  describe '#switch_turn' do
    it 'switches turns between player 1 and player 2' do
      game.switch_turn
      expect(game.current_turn).to eq player2
    end
  end

  describe '#opponent_of' do
    it 'finds the opponent of a player' do
      expect(game.opponent_of(player1)).to eq player2
      expect(game.opponent_of(player2)).to eq player1
    end
  end

end
