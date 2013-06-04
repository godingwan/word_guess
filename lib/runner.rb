class Runner
  def get_total_number_of_players
    puts 'How many players?'
    total_players = gets.chomp.to_i
  end

  def get_player_name
    puts 'What is your name?'
    player_name = gets.chomp
  end
end