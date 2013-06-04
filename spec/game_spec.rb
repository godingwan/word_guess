require 'pry'

require_relative '../lib/game'
require_relative '../lib/player'

describe Game do
  it 'checks that a number is passed for players' do
    test_game = Game.new
    total_players = test_game.players(5)
    expect(total_players).to eql(5)
  end

  it 'checks that error is raise if players are more than 5' do
    test_game = Game.new
    expect { test_game.players(6) }.to raise_error(RangeError, "Players cannot be more than 5.")
  end
end

describe Player do
  it 'gets the name of the player' do
    player = Player.new
    player_name = player.get_name('John')
    expect(player_name).to eql('John')
  end
end