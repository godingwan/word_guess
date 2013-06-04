require 'pry'

require_relative '../lib/game'
require_relative '../lib/player'

describe Game do
  it 'checks for how many players' do
    test_game = Game.new
    expect(test_game.number_of_players(3)).to eql(3)
  end

  it 'returns an error when the number of players are more than 5' do
    test_game = Game.new
    expect{test_game.number_of_players(6)}.to raise_error
  end
end

# describe Player do
#   it 'gets the name from the player' do
#     test_player = Player.new
#     expect(test_player.name('John')).to eql("John")
#   end
# end