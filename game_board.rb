class GameBoard

  def intitialize
  end

  def display_board
    @one = '1'
    @two = '2'
    @three = '3'
    @four = '4'
    @five = '5'
    @six = '6'
    @seven = '7'
    @eight = '8'
    @nine = '9'

    puts '|=====================|'
    puts '|=====TIC TAC TOE=====|'
    puts '|=====================|'
    puts "       #{@one} | #{@two} | #{@three} "
    puts '      ---+---+---'
    puts "       #{@four} | #{@five} | #{@six} "
    puts '      ---+---+---'
    puts "       #{@seven} | #{@eight} | #{@nine} "
  end
end