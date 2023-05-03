class Player
  attr_reader :name, :marker

  @@count = 0

  def initialize
    @@count += 1

    @name = name
    @marker = marker
  end
end