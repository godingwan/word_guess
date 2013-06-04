require_relative 'game'
require_relative 'player'

class Hangman
  def get_number_of_players
    game = Game.new
    puts 'How many players are there?'
    reply = gets.chomp.to_i
    total_players = game.players(reply)
    return total_players
  end

  def add_players_to_an_array(number)
    player_hash = Hash.new
    counter = 1
    number.times do
      player = Player.new
      puts "What is player #{counter}'s name?"
      player_name = gets.chomp
      player_has << player_name
      counter += 1
    end
    return player_hash
  end
end

game = Hangman.new
game_players = game.get_number_of_players
puts game.add_players_to_an_array(game_players)