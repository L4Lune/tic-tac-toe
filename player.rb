class Player
  attr_accessor :name, :marker

  @@count = 0

  def initialize
    @@count += 1
    puts "What is your name player #{@@count}?"
    @name = gets.chomp
    puts "#{name}, what marker will you use? X or O"
    @marker = gets.chomp
  end

  def add_move
    puts "#{name}, where will you place your marker?"

  end
end