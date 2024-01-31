require './players.rb'
require './questions.rb'
require './math_game.rb'

player1 = Players.new("Player 1")
player2 = Players.new("Player 2")

game = MathGame.new(player1, player2)

game.display_scores
puts ""
puts "----- Game Start! ----"
puts ""

while player1.player_life_left > 0 && player2.player_life_left > 0 do
  puts "Current Player : #{game.current_player.name}"
  puts "Lifes left : #{game.current_player.player_life_left}"
  puts ""
  game.ask_question
  game.display_scores
  game.switch_turn
end
