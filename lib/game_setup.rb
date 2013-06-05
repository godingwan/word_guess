require 'pry'

class GameSetup
  def initialize(number_of_players)
    @number_of_players = number_of_players
    @player_array = Array.new
  end

  def num_players
    @number_of_players.to_i
  end

  def put_name_in_array(name)
    @player_array << name
  end

  def name_does_not_exist?(name)
    @player_array.each do |x|
      if x == name
        return false
      end
    end
  end
end

# def put_name_in_array
#   player_array = Array.new
#   counter = 1
#   total_players.times do
#     player_name = get_player_name
#     player_array << player_name
#     counter += 1
#   end
#   player_array
# end