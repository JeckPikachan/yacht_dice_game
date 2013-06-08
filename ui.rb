puts "welcome to Yacht Dice!\n\n"
players = [Player.new("Player 1"), Player.new("Player 2")]
game = Game.new(players)
die = Die.new

until game.over?
  players.each do |player|
    puts "#{Player.name}, your turn!\n\n"
    turn = Turn.new(player)
    turn.roll
    player.add_points(turn.points)
    puts "You got #{turn.points} points this turn.\n"
    puts "You got #{player.points} points total.\n"
  end
end
puts "You're great person!!"
a = 3
b = 5
puts a + b