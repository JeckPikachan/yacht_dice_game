class Game
  def initialize(players)
    @players = players
    @times = 0
  end

  def over?
    @times += 1
    @times == 13
  end

  def winner
    @players.max_by{|player| player.points}
  end
end