require_relative 'hangman'

class Game

  def players(number_of_players)
    if number_of_players > 5
      raise RangeError, "Players cannot be more than 5."
    else
      return number_of_players
    end
  end
end