class Player
  attr_reader :points
  attr_reader :name

  def initialize(name)
    @name = name
    @points = 0
  end

  def add_points(new_points)
    @points += new_points
  end
end