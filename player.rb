class Player
  attr_reader :name, :marker, :position

  def initialize(name, marker)
    @name = name
    @marker = marker
    @position = nil
  end

  def get_position(name)
    puts "Where will you place your marker #{name}?"
    @position = gets.chomp
  end 
end