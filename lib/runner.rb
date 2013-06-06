require_relative 'game_setup'
require_relative 'players'
require_relative 'game'

require 'random_word_generator'

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

puts
puts "Okay, let's play!"

players_class = Players.new(@players_array)
random_word = RandomWordGenerator.word

game = Game.new(random_word)
user_guess = game.blankify
correct_answer = game.answer
input_valid = nil
while user_guess != correct_answer
  user_guess.each do |char|
    print char
  end
  puts
  shuffled_player = players_class.randomize
  puts "#{shuffled_player}, guess a letter, or enter ! to solve the puzzle: "
  ans = gets.chomp.downcase
  until input_valid
    input_bool = game.input_validation?(ans)
    if input_bool == false
      puts "Please only a letter!"
      ans = gets.chomp.downcase
    else
      input_valid = true
    end
  end
  if ans == '!'
    puts "What is your guess?"
    player_guess = gets.chomp.downcase
    player_guess = game.word_guess(player_guess)
    if player_guess == true
      break
    else
      puts "Nope, sorry!"
      next
    end
  else
    found_bool = game.letter_guess(ans)
    if found_bool == true
      puts "We found #{ans}!"
      user_guess = game.word_so_far_array
    else
      puts "Sorry, we did not find #{ans}!"
    end
  end
  puts
end
puts "#{shuffled_player} wins! Congratulations!"