require './questions.rb'

class MathGame
  attr_accessor :current_player, :player1_score, :player2_score

  def initialize(player1, player2)
    @players = [player1, player2]
    @current_player = player1
  end

  def ask_question
    sum = MathQuestions.generate_question
    puts "Question : #{current_player.name}, what is #{sum[:question]}?"

    print "Answer : ";  player_answer = gets.chomp.to_i

    if player_answer == sum[:answer]
      puts ""
      puts "Correct!"
    else
      puts ""
      puts "Incorrect!"
      current_player.player_life_left -=1
    end
  end

  def switch_turn
    if @players[0].player_life_left > 0 && @players[1].player_life_left > 0
      puts ""
      puts "----- New Turn! ----"
      @current_player = (@current_player == @players[0]) ? @players[1] : @players[0]
    else
      puts "----- END OF GAME ----"
    end
  end

  def display_scores
    puts ""
    puts "---------------------------------------"
    puts "#{@players[0].name}: #{@players[0].player_life_left} VS #{@players[1].name}: #{@players[1].player_life_left}"
    puts "---------------------------------------"
  end
end
