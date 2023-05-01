# require 'pry-byebug'
require_relative 'game_board'
require_relative 'player'

class TicTacToe(player1, player2)
  attr_reader :player1, :player2
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end
end


board = GameBoard.new
player1 = Player.new
player2 = Player.new


board.display_board
