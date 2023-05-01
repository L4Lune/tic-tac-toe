require 'pry-byebug'
require_relative 'game_board'
require_relative 'player'

class TicTacToe
  attr_reader :player1, :player2
  attr_accessor :board, :victory
  
  def initialize(player1, player2, board)
    @player1 = player1
    @player2 = player2
    @board = board
    @victory = false
  end

  def choose_move(player, board)
    puts "#{player.name}, where will you place your marker?"
    @move = gets.chomp
    case @move
    when '1'
      board.one = player.marker
    when '2'
      board.two = player.marker
    when '3'
      board.three = player.marker
    when '4'
      board.four = player.marker
    when '5'
      board.five = player.marker
    when '6'
      board.six = player.marker
    when '7'
      board.seven = player.marker
    when '8'
      board.eight = player.marker
    when '9'
      board.nine = player.marker
    end
  end
  
  def move_is_valid?(player1, player2, board)

  end

  def victory?(player, board)
    if (board.one == player.marker) && (board.two == player.marker) && (board.three == player.marker)
      @victory = true
      puts "#{player.name}, you won!"
    elsif (board.four == player.marker) && (board.five == player.marker) && (board.six == player.marker)
      @victory = true
      puts "#{player.name}, you won!"
    elsif (board.seven == player.marker) && (board.eight == player.marker) && (board.nine == player.marker)
      @victory = true
      puts "#{player.name}, you won!"
    elsif (board.one == player.marker) && (board.four == player.marker) && (board.seven == player.marker)
      @victory = true
      puts "#{player.name}, you won!"
    elsif (board.two == player.marker) && (board.five == player.marker) && (board.eight == player.marker)
      @victory = true
      puts "#{player.name}, you won!"
    elsif (board.three == player.marker) && (board.six == player.marker) && (board.nine == player.marker)
      @victory = true
      puts "#{player.name}, you won!"
    elsif (board.one == player.marker) && (board.five == player.marker) && (board.nine == player.marker)
      @victory = true
      puts "#{player.name}, you won!"
    elsif (board.three == player.marker) && (board.five == player.marker) && (board.seven == player.marker)
      @victory = true
      puts "#{player.name}, you won!"
    end
  end
end

player1 = Player.new
player2 = Player.new
board = GameBoard.new
game = TicTacToe.new(player1, player2, board)

until game.victory == true
  board.display_board
  game.choose_move(player1, board)
  game.victory?(player1, board)
  # binding.pry
  board.display_board
  game.choose_move(player2, board)
  game.victory?(player2, board)
end
