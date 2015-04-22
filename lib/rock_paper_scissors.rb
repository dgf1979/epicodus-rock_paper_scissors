class String
  define_method(:beats) do |opponent|
    player = self
    game_result = ""

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
      game_result = "tie"
    elsif player == "rock" && opponent == "scissors"
      game_result = "true"
    elsif player == "scissors" && opponent == "paper"
        game_result = "true"
    elsif player == "paper" && opponent == "rock"
      game_result = "true"
    elsif player == "rock" && opponent == "paper"
      game_result = "false"
    elsif player == "scissors" && opponent == "rock"
      game_result = "false"
    elsif player == "paper" && opponent == "scissors"
      game_result = "false"
    end

    game_result
  end
end
