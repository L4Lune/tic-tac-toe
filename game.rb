require 'pry-byebug'
require_relative 'game_board'
require_relative 'player'

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
  end
end
