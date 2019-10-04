class Game
  attr_reader :player1, :player2
  attr_accessor :current_turn

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @players = [player1, player2]
    @current_turn = player1
  end

  def switch_turn
    @current_turn = opponent_of(current_turn)
  end

  def opponent_of(current_turn)
    players.reject { |player| player == current_turn }.first
  end

  def opponent
    opponent_of(self.current_turn)
  end

  def loser
    losing_players.first
  end

  def game_over?
    losing_players.any?
  end

  private
  attr_reader :players

  def losing_players
    players.select { |player| player.hp <= 0 }
  end

end
