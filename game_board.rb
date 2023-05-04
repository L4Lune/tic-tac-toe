class GameBoard
  attr_accessor :game_board, :victory, :position

  def initialize
    @game_board = []
    @victory= false
    @position = nil
  end

  def create_board
    @game_board = Array.new(3) { Array.new(3) }
  end

  def create_coord_array(coords)
    coord_array = position.split('')
    xy_coords = coord_array.each_slice(1).to_a
    @row = coord_array[0].to_i
    @column = coord_array[1].to_i
  end

  def get_position(name)
    puts "Where will you place your marker #{name}?"
    puts "Select a location using the axis coordinates. For example 00, 01, 10, 21, 22."
    position = gets.chomp
  end

  def place_marker(name, position, marker)
    create_position_array(position)
    move_is_valid?(name, position, marker)
    @game_board[@row][@column] = marker
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
  end

  def move_is_valid?(name, position, marker)
    placed_move = false
    while placed_move == false
      create_position_array(position)
      if @game_board[@row][@column].nil?
        position
        placed_move = true
      elsif game_board[@row][@column] = marker
        puts "This space is occupied. Select another location."
        get_position(name)
        place_marker(name, position, marker)
      end
    end
  end

  def victory?(name, marker)
      if (@game_board[0][0] == marker) && (@game_board[0][1]== marker) && (@game_board[0][2] == marker)
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