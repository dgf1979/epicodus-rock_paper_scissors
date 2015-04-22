class String
  define_method(:beats) do |opponent|
    player = self
    game_result = ""

    #hand uppercase
    player.downcase!()
    opponent.downcase!()

    # possible combos
    #
    # player == opponent (tie)
    #
    # rock beats scissors (true)
    # scissors beats paper (true)
    # paper beats rock (true)
    #
    # rock beat paper (false)
    # scissors beats rock (false)
    # paper beat scissors (false)

    if player == opponent
      game_result = "Tie!"

    elsif player == "rock" && opponent == "scissors"
      game_result = "Rock Wins!"

    elsif player == "scissors" && opponent == "paper"
      game_result = "Scissors Wins!"

    elsif player == "paper" && opponent == "rock"
      game_result = "Paper Wins!"

    elsif player == "rock" && opponent == "paper"
      game_result = "Paper Wins!"

    elsif player == "scissors" && opponent == "rock"
      game_result = "Rock Wins!"

    elsif player == "paper" && opponent == "scissors"
      game_result = "Scissors Wins!"
    end

    game_result
  end
end
