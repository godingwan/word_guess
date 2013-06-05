class Players
  def initialize(players_array)
    @players_array = players_array
  end

  def randomize
    players_array = @players_array.shuffle
  end
end