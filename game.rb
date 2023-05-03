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
    board.create_board

    loop do
      board.display_board
      player1.get_position(player1.name)
      board.place_marker(player1.marker)
      board.display_board
      # game.choose_move(player1, board)
      game.victory?(player1, board)
      if game.victory == true
        board.display_board
        break
      end
      # binding.pry
      board.display_board
      game.choose_move(player2, board)
      game.victory?(player2, board)
      break if game.victory == true
    end
  end
end
