require './lib/turn'
require './lib/game'
require './lib/player'
require './lib/Die'

puts "welcome to Yacht Dice!\n\n"
players = [Player.new("Player 1"), Player.new("Player 2")]
game = Game.new(players)
die = Die.new(6)

until game.over?
  players.each do |player|
    puts "#{Player.name}, your turn!\n\n"
    turn = Turn.new(player, die)
    turn.roll
    player.add_points(turn.points)
    puts "You got #{turn.points} points this turn.\n"
    puts "You got #{player.points} points total.\n"
  end
end
