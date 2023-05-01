class GameBoard
  attr_accessor :one, :two, :three, :four, :five, :six, :seven, :eight, :nine

  def initialize
    @one = '1'
    @two = '2'
    @three = '3'
    @four = '4'
    @five = '5'
    @six = '6'
    @seven = '7'
    @eight = '8'
    @nine = '9'
  end

  def create_board_array
    Array.new(3) { Array.new(3) }
  end

  def display_board
    puts '|=====================|'
    puts '|=====TIC TAC TOE=====|'
    puts '|=====================|'
    puts "       #{one} | #{two} | #{three} "
    puts '      ---+---+---'
    puts "       #{four} | #{five} | #{six} "
    puts '      ---+---+---'
    puts "       #{seven} | #{eight} | #{nine} "
  end
end