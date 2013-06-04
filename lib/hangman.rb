require_relative 'game'
require_relative 'player'
require_relative 'runner'
require 'pry'

class Hangman
  def initialize
    @game = Game.new
    @player = Player.new
    @runner = Runner.new
  end

  def total_players
    total_players = @game.number_of_players(@runner.get_total_number_of_players)
  end

  def get_player_name
    player_name = @runner.get_player_name
  end

  def put_name_in_array
    player_array = Array.new
    counter = 1
    total_players.times do
      player_name = get_player_name
      player_array << player_name
      counter += 1
    end
    player_array
    binding.pry
  end
end

hangman = Hangman.new
puts hangman.put_name_in_array