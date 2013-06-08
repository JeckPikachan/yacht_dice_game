class Turn
  def initialize(player, die)
    @player = player
    @die = die
    @points = 0
  end

  def roll
    turn_points = []
    5.times do
      @die.roll!
      turn_points << @die.roll
    end
    @turn_points = turn_points
  end

  def points
    num = (1..6)
    a = []
    num.each {|i| a << i}
    num_of_nums = []
    a.each do |i|
      num_of_nums << a.count
    end
    if num_of_nums.max == 5
      50
    elsif num_of_nums.max == 4
      b = 0
      num_of_nums.each{|num| b += num}
      b
    elsif num_of_nums.select{|e| e == 3}.any? && num_of_nums.select{|e| e == 2}
      25

    end
  end
end
