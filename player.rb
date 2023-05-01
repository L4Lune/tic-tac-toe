class Player < GameBoard
  attr_accessor :name, :marker

  @@count = 0

  def initialize
    @@count += 1

    puts "What is your name player #{@@count}?"
    @name = gets.chomp
    puts "#{name}, what marker will you use? X or O"
    @marker = gets.chomp
  end
end