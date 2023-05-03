class Player
  attr_reader :name, :marker

  def initialize(name, marker)
    @name = name
    @marker = marker
  end

  def get_position(name)
    puts "Where will you place your marker #{name}?"
    gets.chomp.to_i
  end 
end