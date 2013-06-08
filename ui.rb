require './lib/turn'
require './lib/game'
require './lib/player'
require './lib/Die'

puts "welcome to Yacht Dice!\n\n"
players = [Player.new("Vasia"), Player.new("Petia")]
game = Game.new(players)
die = Die.new(6)

until game.over?
  players.each do |player|
    puts "#{player.name} , your turn!\n"
    turn = Turn.new(player, die)
    p turn.roll
    player.add_points(turn.points)
    puts "You got #{turn.points} points this turn.\n"
    puts "You got #{player.points} points total.\n\n\n"
  end
end

puts "The winner is #{game.winner.name}! My congratulations!"
