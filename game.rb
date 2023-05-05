require 'pry-byebug'


class Game
  attr_reader :player1, :player2, :board, :current_player
  
  def initialize
    @player1 = nil
    @player2 = nil
    @current_player = nil
    @board = GameBoard.new
  end

  def create_player(number, dup_marker = nil)
    puts "What is your name player ##{number}"
    name = gets.chomp
    marker = get_marker(name, dup_marker)
    Player.new(name, marker)
  end

  def get_marker(name, dup_marker = nil)
    puts "What marker will you choose #{name}?"
    input = gets.chomp
    if input == dup_marker
      puts "You cannot choose the same marker as your opponent. Choose again."
      get_marker(name, dup_marker)
    else
      return input if input != dup_marker
    end
  end

  def play
    player1 = create_player(1)
    player2 = create_player(2, player1.marker)
    # binding.pry
    board.create_board

    loop do
    #  binding.pry
      board.display_board
      begin
        board.get_position(player1.name)
        if board.validate_move(board.position, player1.marker, player2.marker) == false
          raise 
        end
      rescue 
        retry
      end
      board.place_marker(player1.name, board.position, player1.marker)
      board.display_board
      board.victory?(player1.name, player1.marker)
      if board.victory == true
        board.display_board
        break
      end
      # binding.pry
      begin
        board.get_position(player2.name)
        if board.validate_move(board.position, player2.marker, player1.marker) == false
          raise  
        end
      rescue 
        retry
      end
      board.place_marker(player2.name, board.position, player2.marker)
      board.victory?(player2.name, player2.marker)
      if board.victory == true
        board.display_board
        break
      end
    end
  end
end
