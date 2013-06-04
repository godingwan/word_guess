class Game
  def number_of_players(number)
    if number > 5
      raise "There can only be a max of 5 players."
    else
      return number
    end
  end
end