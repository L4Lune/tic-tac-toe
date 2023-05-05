class GameBoard
  attr_accessor :game_board, :victory, :position

  VALID_MOVES = ["00", "01", "02", "10", "11", "12", "20", "21", "22"]

  def initialize
    @game_board = []
    @victory = false
    @position = nil
  end

  def create_board
    @game_board = Array.new(3) { Array.new(3) }
  end

  def create_coord_array(coords)
    coord_array = coords.split('')
    xy_coords = coord_array.each_slice(1).to_a
    @row = coord_array[0].to_i
    @column = coord_array[1].to_i
  end

  def display_board
    puts '|=====================|'
    puts '|=====TIC TAC TOE=====|'
    puts '|=====================|'
    puts '       0   1   2'
    puts "   0    #{@game_board[0][0]} | #{@game_board[0][1]} | #{@game_board[0][2]} "
    puts '      ---+---+---'
    puts "   1    #{@game_board[1][0]} | #{@game_board[1][1]} | #{@game_board[1][2]} "
    puts '      ---+---+---'
    puts "   2    #{@game_board[2][0]} | #{@game_board[2][1]} | #{@game_board[2][2]} "
    puts ''
  end

  def get_position(name)
    puts "Where will you place your marker #{name}?\n\n"
    puts "Select a location using the axis coordinates. For example 00, 01, 10, 21, 22.\n\n"
    @position = gets.chomp
  end

  def place_marker(name, coords, marker)
    create_coord_array(coords)
    @game_board[@row][@column] = marker
  end

  def validate_move(coords, marker1, marker2)
    create_coord_array(coords)
    if game_board[@row][@column].nil?
      return true
    elsif game_board[@row][@column] == marker1 || game_board[@row][@column] == marker2
      puts "That space is occupied, please select another location.\n\n"
      return false
    end
  end

  def board_full?(marker1, marker2)
    game_board.all? { |spot| spot = marker1 || spot = marker2 }
  end

  def victory?(name, marker)
    if (@game_board[0][0] == marker) && (@game_board[0][1] == marker) && (@game_board[0][2] == marker)
      @victory = true
      puts "#{name}, you won!"
    elsif (@game_board[1][0] == marker) && (@game_board[1][1] == marker) && (@game_board[1][2] == marker)
      @victory = true
      puts "#{name}, you won!"
    elsif (@game_board[2][0] == marker) && (@game_board[2][1] == marker) && (@game_board[2][2] == marker)
      @victory = true
      puts "#{name}, you won!"
    elsif (@game_board[0][0] == marker) && (@game_board[1][0] == marker) && (@game_board[2][1] == marker)
      @victory = true
      puts "#{name}, you won!"
    elsif (@game_board[0][1] == marker) && (@game_board[1][1] == marker) && (@game_board[2][1] == marker)
      @victory = true
      puts "#{name}, you won!"
    elsif (@game_board[0][2] == marker) && (@game_board[1][2] == marker) && (@game_board[2][2] == marker)
      @victory = true
      puts "#{name}, you won!"
    elsif (@game_board[0][0] == marker) && (@game_board[1][1] == marker) && (@game_board[2][2] == marker)
      @victory = true
      puts "#{name}, you won!"
    elsif (@game_board[0][2] == marker) && (@game_board[1][1] == marker) && (@game_board[2][0] == marker)
      @victory = true
      puts "#{name}, you won!"
    end
  end
end
