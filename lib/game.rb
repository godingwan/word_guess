class Game
  attr_accessor :blank_array, :answer_array

  def initialize(word)
    @word = word
    @blank_array = Array.new
    @answer_array = Array.new
  end

  def blankify
    @word.each_char do |char|
      @blank_array << "\_ "
    end
    return @blank_array
  end

  def answer
    @word.each_char do |char|
      @answer_array << "#{char} "
    end
    return @answer_array
  end

  def letter_guess(letter)
    answer = @answer_array
    guess = letter.to_s + ' '
    answer.each do |char|
      if char == guess
        return true
      else
        return false
      end
    end
  end
end