class Game
  attr_accessor :blank_array

  def initialize(word)
    @word = word
    @blank_array = Array.new
  end

  def blankify
    @word.each_char do |char|
      @blank_array << "\_ "
    end
    return @blank_array
  end
end