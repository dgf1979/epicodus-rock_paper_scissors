class String
  define_method(:beats) do |opponent|
    player = self
    game_result = ""

    if player == "rock" && opponent == "scissors"
      game_result = "true"
    end

    game_result
  end
end
