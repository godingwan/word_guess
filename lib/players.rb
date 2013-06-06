class Players
  def initialize(players_array)
    @players_array = players_array
  end

  def randomize
    random_player = @players_array.sample
  end
end