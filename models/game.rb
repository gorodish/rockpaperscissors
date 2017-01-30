class Game

  def initialize(play1, play2)
    @play1 = play1
    @play2 = play2
  end

  def winner()
    if @play1 == "rock" && @play2 == "scissors"
      return "Rock beats scissors. Player 1 wins!"
    elsif @play1 == "rock" && @play2 == "paper"
      return "Paper beats rock. Player 2 wins!"
    elsif @play1 == "scissors" && @play2 == "paper"
      return "Scissors beat paper. Player 2 wins!"
    end
  end

end