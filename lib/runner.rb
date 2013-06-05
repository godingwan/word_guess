require_relative 'game_setup'
require_relative 'players'

require 'pry'

intro_text = "How many players? Min: 1, Max: 5"

puts intro_text

player_count = gets.chomp

setup = GameSetup.new(player_count)
num_players = setup.num_players
players_bool = setup.check_number_of_players(num_players)
while players_bool == false
  puts "There can only be 1 to 5 players."
  puts intro_text
  player_count = gets.chomp
  setup = GameSetup.new(player_count)
  num_players = setup.num_players
  players_bool = setup.check_number_of_players(num_players)
end

setup.num_players.times do |i|
  result = false
  while result == false
    puts "What is player #{i+1}'s name?"
    name = gets.chomp
    result = setup.name_does_not_exist?(name)
    @players_array = setup.put_name_in_array(name)
    if result == false
      puts "Name has already been taken"
    end
  end
end

puts "Okay, let's play!"

players_class = Players.new(@players_array)

while true
  shuffle_players = players_class.randomize
end