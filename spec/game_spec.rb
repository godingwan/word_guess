require_relative '../lib/game_setup'
require_relative '../lib/players'
require_relative '../lib/game'

require 'pry'

describe GameSetup do
  it 'checks for how many players' do
    test_game = GameSetup.new(3)
    number_of_players = test_game.num_players
    expect(number_of_players).to eql(3)
  end

  it 'creates a new instance of game when the number of players are more than 5' do
    test_game = GameSetup.new(6)
    num_players = test_game.num_players
    bool = test_game.check_number_of_players(num_players)
    expect(bool). to eql(false)
  end

  it 'adds names to an array' do
    test_game = GameSetup.new(3)
    @player_array = Array.new
    player_array = test_game.put_name_in_array("John")
    player_array_size = player_array.length
    expect(player_array_size).to eql(1)
  end

  it 'does not add name if name already exists' do
    test_game = GameSetup.new(2)
    test_game.put_name_in_array("John")
    bool = test_game.name_does_not_exist?("John")
    expect(bool).to eql(false)
  end
end

describe Game do
  it 'presents a list of blanks for a given word' do
    test_game = Game.new('hello')
    blank_word = test_game.blankify
    expect(blank_word).to eql(['_ ','_ ', '_ ', '_ ', '_ '])
  end

  it 'returns true if submitted letter matches' do
    test_game = Game.new('hello')
    blank_word = test_game.blankify
    answer = test_game.answer
    guess_bool = test_game.letter_guess('h')
    expect(guess_bool).to eql(true)
  end

  it 'returns false if submitted letter does not match' do
    test_game = Game.new('hello')
    blank_word = test_game.blankify
    answer = test_game.answer
    guess_bool = test_game.letter_guess('a')
    expect(guess_bool).to eql(false)
  end
end