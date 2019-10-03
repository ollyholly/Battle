class Game
  attr_reader :player1, :player2
  attr_accessor :turn

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @turn = player1
  end

  def attack(opponent)
    opponent.receive_damage
  end

  def switch_turn
    if self.turn == player1
      self.turn = player2
    else
      self.turn = player1
    end
  end

end
