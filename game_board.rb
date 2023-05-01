class GameBoard
  
  @one = '1'
  @two = '2'
  @three = '3'
  @four = '4'
  @five = '5'
  @six = '6'
  @seven = '7'
  @eight = '8'
  @nine = '9'

  def display_board
    p '|=====================|'
    p '|=====TIC TAC TOE=====|'
    p '|=====================|'
    p ' #{one} | #{two} | #{three} '
    p '---+---+---'
    p ' #{four} | #{five} | #{six} '
    p '---+---+---'
    p ' #{seven} | #{eight} | #{nine} '
  end
end