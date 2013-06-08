class Die
  attr_reader :roll

  def initialize(num_of_sides)
    @num_of_sides = num_of_sides
  end

  def roll!
    @roll = rand(1..@num_of_sides)
  end
end