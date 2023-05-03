class GameBoard
  attr_accessor :one, :two, :three, :four, :five, :six, :seven, :eight, :nine, :game_board

  def initialize
    @game_board = Array.new(3) { Array.new(3) }
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
    Array.new(3) { Array.new(3) }
  end
  
  def place_marker(player, position)
    validate_move(position)
    @game_board[position.row][position.column] = player.marker
  end

  def validate_move(position)
    current_position = get_position(position)
    unless current_position.nil?
      raise PositionOccupiedException.new(position, current_position)
    end
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