# TwO-O-Player Math Game
require './player.rb'
require './question.rb'

# To start the game =>
# initialize a new instance => game = Game.new
# call the play method => game.play

class Game
  def initialize
    @player1 = Player.new("Player1")
    @player2 = Player.new("Player2")
    @current_player = @player1
  end

  #Switch player method
  def switch_player 
    @current_player = (@current_player == @player1) ? @player2 : @player1
  end

  #Turn the question method, check question...
  def turn
    question = Question.new
    puts question.ask_question(@current_player.name)
    print "> "
    answer = gets.chomp.to_i #listening to STDIN, converting to integer (to_i) 
    if question.correct_answer?(answer) # if true returned from correct_answer method (question module)
      puts "You got it!"
    else
      puts "Nope! Your answer is wrong!"
      @current_player.lose_life  #method used from player module
    end
    display_scores
    switch_player
  end

  #Display scores method
  def display_scores
    puts "P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3"
  end

  #Lives/game status checking method
  def play
    until @player1.lives == 0 || @player2.lives == 0
      turn
    end
    end_game
  end
  
  def end_game
    winner = (@player1.lives > 0) ? @player1 : @player2
    puts "#{winner.name} wins with a score of #{winner.lives}/3"
    puts "----GAME OVER----"
    puts "See you next time!"
  end
end

#Start the game
game = Game.new
game.play