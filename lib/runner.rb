require 'pry'

require_relative 'game_setup'

puts "How many players do you want?"

player_count = gets.chomp

setup = GameSetup.new(player_count)

setup.num_players.times do |i|

  result = false
  while result == false
    puts "What is player #{i+1}'s name?"
    name = gets.chomp
    result = setup.name_does_not_exist?(name)
    setup.put_name_in_array(name)
    if result == false
      puts "Name has already been taken"
    end
  end
end