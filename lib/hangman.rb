require_relative 'game'
require_relative 'player'
require_relative 'runner'

class Hangman
  def initialize
    @game = Game.new
    @player = Player.new
    @runner = Runner.new
  end

  def total_players
    total_players = @game.number_of_players(@runner.get_total_number_of_players)
  end
end

hangman = Hangman.new
puts hangman.total_players