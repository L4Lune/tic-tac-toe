class GameBoard
  attr_accessor :one, :two, :three, :four, :five, :six, :seven, :eight, :nine, :game_board

  def initialize
    # @game_board = nil
    @one = 1
    @two = 2
    @three = 3
    @four = 4
    @five = 5
    @six = 6
    @seven = 7
    @eight = 8
    @nine = 9
  end

  def create_board
    @game_board = Array.new(3) { Array.new(3) }
  end

  def create_position_array(position)
    position_array = position.split('')
    xy_coords = position_array.each_slice(1).to_a
    @row = position_array[0].to_i
    @column = position_array[1].to_i
  end

  def place_marker(marker)
    # create_position_array
    # validate_move(position)
    @game_board[@row][@column] = marker
  end

  def display_board
    puts '|=====================|'
    puts '|=====TIC TAC TOE=====|'
    puts '|=====================|'
    puts "       #{game_board[0][0]} | #{two} | #{three} "
    puts '      ---+---+---'
    puts "       #{four} | #{five} | #{six} "
    puts '      ---+---+---'
    puts "       #{seven} | #{eight} | #{nine} "
  end
end